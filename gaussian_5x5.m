% Filters image in spatial domain with 5x5 Gaussian kernel. Accepts uint8
% image input, and returns uint8 output.

function im_filtered = gaussian_5x5(im_orig)
    kernel = [0.003765, 0.015019, 0.023792, 0.015019, 0.003765;
              0.015019, 0.059912, 0.094907, 0.059912, 0.015019;
              0.023792, 0.094907, 0.150342, 0.094907, 0.023792;
              0.015019, 0.059912, 0.094907, 0.059912, 0.015019;
              0.003765, 0.015019, 0.023792, 0.015019, 0.003765];
          
    im_filtered = im2uint8(conv2(im2double(im_orig), kernel, 'same'));
end