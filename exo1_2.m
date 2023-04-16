I = uint8(ones(250)*50);
I(100:149, 100:149) = 200;
H7 = [0 1 0; 1 -4 1; 0 1 0];

I7 = imfilter(I, H7);
imshow(mat2gray(I7));
title('H7');