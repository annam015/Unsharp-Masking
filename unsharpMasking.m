pkg load statistics
pkg load image

imageIn = double(imread("1.jpg"));

a = 0.7;
filter = (1/(a + 1)) * [-a, a-1, -a; a-1, a+5, a-1; -a, a-1, -a];

for i = 1 : size(imageIn, 3)
  imageUM(:, :, i) = conv2(imageIn(:, :, i), filter, 'same');
end

figure;
subplot(1, 2, 1);
imshow(uint8(imageIn));
title('Original image');
subplot(1, 2, 2);
imshow(uint8(imageUM));
title('Unsharp Masking');
