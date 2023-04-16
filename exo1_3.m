I = uint8(ones(250)*50);
I(100:149, 100:149) = 200;

h8 = fspecial('log',[15 15],0.5);
I8 = imfilter(I, h8);
subplot(231);
imshow(mat2gray(I8));
title('h8 15x15 sigma 0.5');

h8 = fspecial('log',[15 15],1);
I8 = imfilter(I, h8);
subplot(232);
imshow(mat2gray(I8));
title('h8 15x15 sigma1');

h8 = fspecial('log',[15 15],2);
I8 = imfilter(I, h8);
subplot(233);
imshow(mat2gray(I8));
title('h8 15x15 sigma 2');

h8 = fspecial('log',[15 15],3);
I8 = imfilter(I, h8);
subplot(234);
imshow(mat2gray(I8));
title('h8 15x15 sigma 3');

h8 = fspecial('log',[15 15],4);
I8 = imfilter(I, h8);
subplot(235);
imshow(mat2gray(I8));
title('h8 15x15 sigma 4');