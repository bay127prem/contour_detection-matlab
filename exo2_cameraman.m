I = imread('cameraman.tif');

subplot(331);
imshow(I);
title('I');

H1 = [1 -1];
H2 = [1 -1].';
H3 = [1 0 -1; 2 0 -2; 1 0 -1];
H4 = [2 1 0; 1 0 -1; 0 -1 -2];
H5 = [1 2 1; 0 0 0; -1 -2 -1];
H6 = [0 1 2; -1 0 1; -2 -1 0];
H7 = [0 1 0; 1 -4 1; 0 1 0];
h8 = fspecial('log',[15 15],1);

I1 = imfilter(I, H1);
subplot(332);
imshow(mat2gray(I1));
title('H1');

I2 = imfilter(I, H2);
subplot(333);
imshow(mat2gray(I2));
title('H2');

subplot(334);
I3 = imfilter(I, H3);
imshow(mat2gray(I3));
title('H3');

subplot(335);
I4 = imfilter(I, H4);
imshow(mat2gray(I4));
title('H4');

subplot(336);
I5 = imfilter(I, H5);
imshow(mat2gray(I5));
title('H5');

subplot(337);
I6 = imfilter(I, H6);
imshow(mat2gray(I6));
title('H6');

subplot(338);
I7 = imfilter(I, H7);
imshow(mat2gray(I7));
title('H7');

I8 = imfilter(I, h8);
subplot(339);
imshow(mat2gray(I8));
title('h8 15x15 sigma 1');