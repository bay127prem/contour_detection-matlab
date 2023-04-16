I = uint8(ones(250)*50);
I(100:149, 100:149) = 200;

subplot(231);
imshow(I);
title('I');

H1 = [1 -1];
H2 = [1 -1].';

I1 = imfilter(I, H1);

subplot(232);
imshow(mat2gray(abs(I1)));
title('mat2gray(abs(I1))');

subplot(233);
imshow(mat2gray(I1));
title('mat2gray(I1)');



I2 = imfilter(I, H2);

subplot(234);
imshow(mat2gray(abs(I2)));
title('mat2gray(abs(I2))');


subplot(235);
imshow(mat2gray(I2));
title('mat2gray(I2)');

