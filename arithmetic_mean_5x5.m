% Filters image in spatial domain with 5x5 box kernel. Accepts uint8
% image input, and returns uint8 output.

function im_filtered = arithmetic_mean_5x5(im_orig)
    kernel = (1/25)*ones(5);
          
    im_filtered = im2uint8(conv2(im2double(im_orig), kernel, 'same'));
end