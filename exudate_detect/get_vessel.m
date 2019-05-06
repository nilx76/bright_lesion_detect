function vessel = get_vessel(im,mask)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    green = im(:,:,2);
    
    clahe = adapthisteq(green);
    
    median = medfilt2(clahe);
    
    mean_c = mean_c_thresholding(median,13,0.035);
    
    noise_removed = bwareafilt(mean_c,[200 Inf]);
    
    vessel = bitand(noise_removed,mask);
end

