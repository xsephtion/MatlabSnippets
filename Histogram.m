tire = imread('tire.tif');
tire_eq = histeq(tire);
pout = imread('pout.tif');
pout_eq = histeq(pout);
eight = imread('eight.tif');
eight_eq = histeq(eight);
subplot(6,2,1)
imshow(tire);
fontSize=10;
title('Original Image', 'FontSize', fontSize)
subplot(6,2,2)
imhist(tire);
fontSize=10;
title('Histogram Image', 'FontSize', fontSize)
subplot(6,2,3)
imshow(tire_eq);
fontSize=10;
title('Equalized Image', 'FontSize', fontSize)
subplot(6,2,4)
imhist(tire_eq);
fontSize=10;
title('Histogram of Equalized Image', 'FontSize', fontSize)

subplot(6,2,5)
imshow(pout);
fontSize=10;
title('Original Image', 'FontSize', fontSize)
subplot(6,2,6)
imhist(pout);
fontSize=10;
title('Histogram Image', 'FontSize', fontSize)
subplot(6,2,7)
imshow(pout_eq);
fontSize=10;
title('Equalized Image', 'FontSize', fontSize)
subplot(6,2,8)
imhist(pout_eq);
fontSize=10;
title('Histogram of Equalized Image', 'FontSize', fontSize)

subplot(6,2,9)
imshow(eight);
fontSize=10;
title('Original Image', 'FontSize', fontSize)
subplot(6,2,10)
imhist(eight);
fontSize=10;
title('Histogram Image', 'FontSize', fontSize)
subplot(6,2,11)
imshow(eight_eq);
fontSize=10;
title('Equalized Image', 'FontSize', fontSize)
subplot(6,2,12)
imhist(eight_eq);
fontSize=10;
title('Histogram of Equalized Image', 'FontSize', fontSize)