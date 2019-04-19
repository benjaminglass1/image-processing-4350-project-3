im_salt_and_pepper = imread('circuitboard-saltandpep.tif');

im_median = median_filter_5x5(im_salt_and_pepper);

subplot(1,2,1)
imshow(im_salt_and_pepper)
title('Original, noisy image')
subplot(1,2,2)
imshow(im_median)
title('Image filtered with 5x5 median filter')