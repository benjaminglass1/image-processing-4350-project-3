% Filters image in spatial domain with 5x5 geometric mean filter. Accepts uint8
% image input, and returns uint8 output.

function im_filtered = geometric_mean_5x5(im_orig)
im_double = im2double(im_orig);
im_filtered = zeros(size(im_double)); % preallocate memory for speed.

for i = 1:size(im_double, 1)
    for j = 1:size(im_double, 2)
        % Check if at edge; if so, set pixel to 0.
        if ((i < 3) || (i > (size(im_double,1) - 2)) || (j < 3) || (j > (size(im_double,2) - 2)))
            im_filtered(i,j) = 0.0;
        else
            multiplied_value = 1.0;
            
            for k = -2:2
                for l = -2:2
                    multiplied_value = multiplied_value*im_double(i+k, j+l);
                end
            end
            
            im_filtered(i,j) = multiplied_value^(1/25);
        end
    end
end

im_filtered = im2uint8(im_filtered);
end