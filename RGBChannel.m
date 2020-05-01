rgbImage=imread('vegs.png');
redChannel=rgbImage(:,:,1);
greenChannel=rgbImage(:,:,2);
blueChannel=rgbImage(:,:,3);
allBlack = zeros(size(rgbImage, 1), size(rgbImage,2), 'uint8');
just_red = cat(3, redChannel, allBlack, allBlack);
just_green = cat(3, allBlack, greenChannel, allBlack);
just_blue = cat(3, allBlack, allBlack, blueChannel);
recombinedRGBImage = cat(3, redChannel,greenChannel,blueChannel);
subplot(1,4,1);
imshow(rgbImage);
subplot(1,4,2)
imshow(just_red);
subplot(1,4,3)
imshow(just_green);
subplot(1,4,4)
imshow(just_blue);