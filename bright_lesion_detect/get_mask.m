function fov_mask = get_mask(im)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    
    green = im(:,:,2);
    
    [width, height] = size(green); % ??

    offset = round(size(green) * 0.04);
    offset_width  = offset(1);
    offset_height = offset(2);

    seeds = zeros(1,2,6);
    seeds(:,:,1) = [offset_width,offset_height];
    % seeds(:,:,2) = [width-offset_width,offset_height];
    % seeds(:,:,3) = [offset_width, height-offset_height];
    % seeds(:,:,4) = [width-offset_width,height-offset_height];
    % seeds(:,:,5) = [1,1];
    % seeds(:,:,6) = [width,height];
    
    fov_mask = zeros(size(green),'logical');
    
    for i = 1:1
        % Use seed
        seed = seeds(:,:,i);
        x=seed(1,1);
        y=seed(1,2);
        res = regiongrowing(double(green),x,y,16); % 16 for STARE
        fov_mask = bitor(res,fov_mask);
    end
    
    
    fov_mask = ~fov_mask;
    
    fov_mask = imerode(fov_mask,strel('disk',10));
end

