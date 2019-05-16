function thresholded = mean_c_thresholding(input,window,c)
% mean_c_thresholding function segments the blood vessels from the retina 
% image.
%   Input image should be preprocessed with green channel extraction,
%   CLAHE filter and smoothing with median filter.
%   Return blood vessel image but with a lot of noise. Denoise operation
%   should be used.

    % Rescale input matrix image to [0,1]
    % with 0 -> 0, 255 -> 1
    im = rescale(input,0,1,'InputMin',0,'InputMax',255);
    
    % STEP 1
    % Window size for mean filter !! CONST
    window_size = window;
    % Value for thresholding !! CONST
    threshold_value = c;
    
    % STEP 2
    % Create mean kernel corresponding to the window size
    mean_kernel = double(ones(window_size,window_size)) * (1 / window_size^2);
    % Convolve with the input image to create mean image
    mean_im = conv2(im,mean_kernel,'same');
    
    % STEP 3
    % Find the diff (subtraction) between convolved image and input image
    diff_im = minus(mean_im, im);
    
    % STEP 4
    % Subtract diff image with the threshold constant
    c_subtracted_im = diff_im - threshold_value;
    
    % STEP 5
    % Init an binary matrix
    thresholded = false(size(c_subtracted_im));
    % Convert result image to a binary image
    for i = 1:numel(c_subtracted_im)
        if (c_subtracted_im(i) <= 0)
            thresholded(i) = false;
        else
            thresholded(i) = true;
        end
    end
end

