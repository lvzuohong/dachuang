RGB =imread('xiaowei.bmp');
R = RGB(:,:,1);    %%提取红色通道
G = RGB(:,:,2);    %%提取绿色通道
B = RGB(:,:,3);    %%提取蓝色通道
Rave = mean(mean(R));     %%算出红色通道的总体平均值
Gave = mean(mean(G));
Bave = mean(mean(B));
Kave = (Rave+Gave+Bave) / 3;   %%三个通道的平均值
Rnew = (Kave/Rave)*R;
Gnew = (Kave/Gave)*G;
Bnew = (Kave/Bave)*B;
RGB_white = cat(3,Rnew,Gnew,Bnew); %%将三通道合并
RGB_white_out = uint8(RGB_white);
subplot(2,2,1),imshow(RGB_white_out),title('白平衡后的图');
subplot(2,2,2),imshow(RGB),title('原图');

%% 灰度世界算法（白平衡）%%