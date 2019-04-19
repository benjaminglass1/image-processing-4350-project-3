function add_gaussian_noise(img1,mean,variance)

% This function takes img1, mean, and variance as inputs. It adds gaussian 
% noise to original image based on these values and displays result.
% img1 = imread('test-pattern.tif');
% meanValue = 0;
% variance = 1000;

gaussian_noise = sqrt(variance)*randn(size(img1)) + mean;
img1_gaussian = uint8(double(img1) + gaussian_noise);

[x,y] = size(img1_gaussian);   

figure;
subplot(2,2,1); imshow(img1); title('A = Test Pattern');
subplot(2,2,2); imshow(uint8(img1_gaussian)); title('B = with Gaussian Noise'); 
subplot(2,2,3); histogram(img1); title('Histogram A');
subplot(2,2,4); histogram(img1_gaussian,255); title('Histogram B');
ylim([0 2500]);