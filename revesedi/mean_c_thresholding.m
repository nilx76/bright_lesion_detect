function thresholded = mean_c_thresholding(input)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    % Rescale input matrix image to [0,1]
    % with 0 -> 0, 255 -> 1
    im = rescale(input,'InputMin',0,'InputMax',255);
    
    % STEP 1
    % Window size for mean filter !! CONST
    window_size = 13;
    % Value for thresholding !! CONST
    threshold_value = 0.042;
    
    % STEP 2
    % Create mean kernel corresponding to the window size
    mean_kernel = ones(window_size,window_size) * (1 / window_size^2);
    % Convolve with the input image to create mean image
    mean_im = convolve_double(im,mean_kernel);
    
    % STEP 3
    % Find the diff between convolved image and input image
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

