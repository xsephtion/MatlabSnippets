clear all
clc


F = imread('vegs.png');
F = im2double(F);
r = F(:,:,1);
g = F(:,:,2);
b = F(:,:,3);
c= 1-r;
m = 1-g;
y = 1-b;
CMY = cat(3,c,m,y);
subplot(3,2,1), imshow(F), title('RGB');
subplot(3,2,2), imshow(CMY), title('CMY');





A = imread('vegs.png');
subplot(3,2,3), imshow(A); title('RGB');
% represent the rgb image into range of 0 to 1
I = double(A)/255;
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

% hue
numi = 1/2*((R-G)+(R-B));
denom = ((R-G).^2+((R-B).*(G-B))).^0.5;

H = acosd(numi./denom+0.000001);
H(B>G) = 360 - H(B>G);

H = H/360;


% saturation


S = 1-(3./(sum(I,3)+0.000001)).*min(I,[],3);


%intensity
I = sum(I,3)./3;


%HSI
HSI = zeros(size(A));
HSI(:,:,1) = H;
HSI(:,:,2) = S;
HSI(:,:,3) = I;


subplot(3,2,4), imshow(HSI); title('HSI image');


qr = imread('vegs.png');
qr = im2double(qr);
r = qr(:,:,1);
g = qr(:,:,2);
b = qr(:,:,3);

c = 1-r;
m = 1-g;
y = 1-b;

k = 1;
if c < k
    k = c;
    k = 1-k;
    disp('test1if');
elseif m < k
    k = m;
    k = 1-k;
    disp('test2if');
elseif y < k
    k = y;
    k = 1-k;
    disp('test3if');
end


c = 0.5-(c-k);
m = 0.5-(m-k);
y = 0.5-(y-k);

CMYK = cat(3,c,m,y);

subplot(3,2,5), imshow(qr), title('RGB');
subplot(3,2,6), imshow(CMYK), title('CMYK');



