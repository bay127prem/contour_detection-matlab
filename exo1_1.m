I = uint8(ones(250)*50);
I(100:149, 100:149) = 200;

H3 = [1 0 -1; 2 0 -2; 1 0 -1];
H4 = [2 1 0; 1 0 -1; 0 -1 -2];
H5 = [1 2 1; 0 0 0; -1 -2 -1];
H6 = [0 1 2; -1 0 1; -2 -1 0];


subplot(221);
I3 = imfilter(I, H3);
imshow(mat2gray(I3));
title('H3');

subplot(222);
I4 = imfilter(I, H4);
imshow(mat2gray(I4));
title('H4');

subplot(223);
I5 = imfilter(I, H5);
imshow(mat2gray(I5));
title('H5');

subplot(224);
I6 = imfilter(I, H6);
imshow(mat2gray(I6));
title('H6');