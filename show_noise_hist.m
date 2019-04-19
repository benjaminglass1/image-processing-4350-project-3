function show_noise_hist(img1,img2,img3)

% This function takes three image and shows their histograms for visual
% noise analysis
% img1 = imread('test-pattern-N1.tif');
% img2 = imread('test-pattern-N2.tif');
% img3 = imread('test-pattern-N3.tif');

figure;
subplot(2,3,1); imshow(img1); title('Test Pattern N1');
subplot(2,3,2); imshow(img2); title('Test Pattern N2');
subplot(2,3,3); imshow(img3); title('Test Pattern N3');
subplot(2,3,4); hist_img2 = histogram(img1,'Normalization','probability'); title({'Test Pattern N1','Erlanga Noise'});
subplot(2,3,5); hist_img3 = histogram(img2,'Normalization','probability'); title({'Test Pattern N2','Gaussian Noise'});
subplot(2,3,6); hist_img4 = histogram(img3,'Normalization','probability'); title({'Test Pattern N3','Rayleigh Noise'});








