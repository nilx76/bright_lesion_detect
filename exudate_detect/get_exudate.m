function exudate = get_exudate(im)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    green = double(im(:,:,2));

    medfilt_window = [25 25];
    background_est1 = medfilt2(green, medfilt_window);
    
    recon_mask = zeros(size(green), 'double');
    for i = 1:numel(green)
        if (green(i) < background_est1(i))
            recon_mask(i) = background_est1(i);
        else
            recon_mask(i) = green(i);
        end
    end
    
    % Reconstruct the background estimation
    background_est2 = imreconstruct(background_est1, recon_mask);
    
    % -----
    
    % Remove background
    background_removed = green - background_est2;
    
    % Get exudate candidate
    threshold_value_bg = 10;
    exudate_candidate = background_removed;
    exudate_candidate(background_removed < threshold_value_bg) = 0;
    exudate_candidate(background_removed >=threshold_value_bg) = 1;
    exudate_candidate = logical(exudate_candidate); % Convert to binary array
    exudate_candidate = bwareafilt(exudate_candidate, [10 Inf]); % Remove pepper noise
    
    % -----
    
    % Kirsch's kernels
    k(:,:,1) = [ 5, 5, 5;-3, 0,-3;-3,-3,-3]/15;
    k(:,:,2) = [ 5, 5,-3; 5, 0,-3;-3,-3,-3]/15;
    k(:,:,3) = [ 5,-3,-3; 5, 0,-3; 5,-3,-3]/15;
    k(:,:,4) = [-3,-3,-3; 5, 0,-3; 5, 5,-3]/15;
    k(:,:,5) = [-3,-3,-3;-3, 0,-3; 5, 5, 5]/15;
    k(:,:,6) = [-3,-3,-3;-3, 0, 5;-3, 5, 5]/15;
    k(:,:,7) = [-3,-3, 5;-3, 0, 5;-3,-3, 5]/15;
    k(:,:,8) = [-3, 5, 5;-3, 0, 5;-3,-3,-3]/15;
    
    % Kirsch edge convolution results
    kirsch_conv_res = zeros([size(green),8], 'double');
    for i = 1:8 
        % Do convolution for 8 kernels
        kirsch_conv_res(:,:,i) = conv2(green,k(:,:,i),'same');
    end
    % Get the max for each pixel
    kirsch_max = max(kirsch_conv_res,[],3);
    exudate_edge = kirsch_max;
    
    % Exudate edge candidate thresholding
    edge_threshold_value = 5;
    edge_candidate = exudate_edge;
    edge_candidate(exudate_edge > edge_threshold_value) = 1;
    edge_candidate(exudate_edge <=edge_threshold_value) = 0;
    edge_candidate = logical(edge_candidate);
    
    % ------
    
    % Get blood vessel
    fov_mask = get_mask(im);
    vessel = get_vessel(im,fov_mask);
    % Dilate vessel to remove bright regions alongside vessel
    vessel = imdilate(vessel,strel('disk',8));
    
    % Remove vessel from edge_candidate
    edge_ves_removed = edge_candidate - vessel;
    edge_ves_removed(edge_ves_removed > 0) = 1;
    edge_ves_removed(edge_ves_removed <=0) = 0;
    edge_ves_removed = logical(edge_ves_removed);
    % Remove object smaller than 30 pixel
    edge_ves_removed = bwareafilt(edge_ves_removed, [30 Inf]);

    % -----
    
    % BITAND operator exudate_candidate and edge_ves_removed
    recon_marker = bitand(edge_ves_removed, exudate_candidate);
    
    % Reconstruct exudate based on reconstruct marker
    exudate = imreconstruct(recon_marker,exudate_candidate);
    % Remove out-of-fov region
    exudate = bitand(exudate, fov_mask);
    
    imshowpair(im, exudate, 'blend');
    
    
    
    
    
    
end

