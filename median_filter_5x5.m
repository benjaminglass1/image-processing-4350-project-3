% Filters image in spatial domain with 5x5 median filter. Accepts uint8
% image input, and returns uint8 output.

function im_filtered = median_filter_5x5(im_orig)
im_double = im2double(im_orig); % converts to double and scales to [0,1]
im_filtered = zeros(size(im_double)); % preallocate memory for speed.

for i = 1:size(im_double, 1)
    for j = 1:size(im_double, 2)
        % Check if at edge; if so, set pixel to 0.
        if ((i < 3) || (i > (size(im_double,1) - 2)) || (j < 3) || (j > (size(im_double,2) - 2)))
            im_filtered(i,j) = 0.0;
        else
            median_array = zeros(1,25); % preallocation for speed
            location_counter = 1;
            
            for k = -2:2
                for l = -2:2
                    median_array(location_counter) = im_double(i+k, j+l);
                    location_counter = location_counter + 1;
                end
            end
            
            im_filtered(i,j) = median(median_array);
        end
    end
end

im_filtered = im2uint8(im_filtered); % converts back to [0, 255] uint8
end