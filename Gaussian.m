close all
clear
clc
im = imread('cameraman.tif');
J = uint8(filter2(fspecial('gaussian'), im));
im0 = imabsdiff(im,J);
im1 = imadd(im,128);
im2 = imsubtract(im,128);
im3 = immultiply(im,5);
im4 = imdivide(im,5);
im5 = imlincomb(1.5,im);
im6 = imcomplement(im);
createnoise = imnoise(im,'salt & pepper',0.02);

figure; title('image arithmetic')
subplot(2,4,1);imshow(im0), title('using absolute difference');
subplot(2,4,2);imshow(im1), title('using add');
subplot(2,4,3);imshow(im2), title('using subtract');
subplot(2,4,4);imshow(im3), title('using mulptiply');
subplot(2,4,5);imshow(im4), title('using divide');
subplot(2,4,6);imshow(im5), title('using imlincomb');
subplot(2,4,7);imshow(im6), title('using imcomplement');


figure; title('image enhancement');

subplot(2,4,1);imshow(histeq(im)), title('hist eq');
subplot(2,4,2);imshow(imadjust(im,[0.3 0.7],[])), title('imadjust');
subplot(2,4,3);imshow(createnoise), title('imnoise');
subplot(2,4,4);imshow(medfilt2(im)), title('2D median filtering');
subplot(2,4,5);imshow(ordfilt2(im,25,true(5))), title('2-D order-statistic filtering');
subplot(2,4,6);imshow(imadjust(im,stretchlim(im),[])), title('Find limits to contrast stretch image');
subplot(2,4,7);imshow(wiener2(createnoise,[5 5])), title('2-D adaptive noise-removal filtering');

figure; title('Deblurring');

psf =fspecial('gaussian',7,10);
v = 0.001;
wt = zeros(size(im));
initpsf = ones(size(psf));
PSF2 = fspecial('gaussian',13,1);
OTF  = psf2otf(PSF2,[31 31]);
blurredImage = imnoise(imfilter(im, psf),'gaussian',0,v);
[J P] = deconvblind(blurredImage, initpsf,30);
subplot(2,4,1); imshow(blurredImage); title('blurred image');
subplot(2,4,2); imshow(J, []); title('deconvblind');
subplot(2,4,3); imshow(deconvlucy(blurredImage, psf)); title('deconvlucy');
subplot(2,4,4); imshow(deconvreg(blurredImage,psf)); title('deconvreg');
subplot(2,4,5); imshow(deconvwnr(blurredImage, psf,0.03)); title('deconvwnr');
subplot(2,4,6); imshow(edgetaper(im,fspecial('gaussian',60,10)));title('Edgetaper');
subplot(2,4,7); surf(abs(OTF)); title('otf2psf'); axis square; axis tight;

subplot(2,4,8); surf(abs(PSF2)); title('psf2otf'); axis square; axis tight;
