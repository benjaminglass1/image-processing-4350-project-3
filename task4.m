im_orig = imread('astronaut-interference.tif');

% filter values created by observation.
filter = double(ones(size(im_orig)));
filter(388, 476) = 0;
filter(438, 526) = 0;

[im_filtered, fft_orig] = frequency_filter(im_orig, filter);

% scale image fft values for display
fft_orig = abs(fft_orig) - min(min(abs(fft_orig)));
fft_orig = fft_orig / max(max(fft_orig));

figure();
subplot(2,2,1)
imshow(im_orig)
title('Image with sinusoidal interference')
subplot(2,2,2)
% zoomed to increase visibility of 1-pixel wide interference 
imshow(fft_orig((412-50):(412+50), (500-50):(500+50)))
title('Zoomed in spectrum')
subplot(2,2,3)
imshow(filter((412-50):(412+50), (500-50):(500+50)))
title('Zoomed in filter')
subplot(2,2,4)
imshow(im_filtered)
title('Filtered image')
