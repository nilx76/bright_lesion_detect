% convolve hides away the cumbersome type conversions
function convolved_im = convolve_double(image, kernel)
    convolved_im = conv2(double(image), double(kernel),'same');
end