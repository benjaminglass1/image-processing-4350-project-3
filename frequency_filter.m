% im_filtered() accepts as inputs a uint8 grayscale image and a filter of the
% same size specified as a frequency domain image (DC-level centered). This
% can be used to (e.g.) filter known sinusoidal interference from an image.

function [im_filtered, fft_orig] = frequency_filter(im_orig, filter)
    fft_orig = fftshift(fft2(im2double(im_orig))); % fftshift centers DC level
    fft_modified = fft_orig .* filter; % apply filter in freq. domain
    
    im_filtered = im2uint8(ifft2(ifftshift(fft_modified))); % revert shift, deFFT.
end