im_orig = imread('circuitboardN.tif');

im_gaussian = gaussian_5x5(im_orig);
im_arithmetic = arithmetic_mean_5x5(im_orig);
im_geometric = geometric_mean_5x5(im_orig);

subplot(2,2,1)
imshow(im_orig)
title('Original, noisy image')
subplot(2,2,2)
imshow(im_gaussian)
title('Filtered with 5x5 Gaussian')
subplot(2,2,3)
imshow(im_arithmetic)
title('Filtered with 5x5 box filter')
subplot(2,2,4)
imshow(im_geometric)
title('Filtered with 5x5 geometric mean')