RGB =imread('xiaowei.bmp');
R = RGB(:,:,1);    %%��ȡ��ɫͨ��
G = RGB(:,:,2);    %%��ȡ��ɫͨ��
B = RGB(:,:,3);    %%��ȡ��ɫͨ��
Rave = mean(mean(R));     %%�����ɫͨ��������ƽ��ֵ
Gave = mean(mean(G));
Bave = mean(mean(B));
Kave = (Rave+Gave+Bave) / 3;   %%����ͨ����ƽ��ֵ
Rnew = (Kave/Rave)*R;
Gnew = (Kave/Gave)*G;
Bnew = (Kave/Bave)*B;
RGB_white = cat(3,Rnew,Gnew,Bnew); %%����ͨ���ϲ�
RGB_white_out = uint8(RGB_white);
subplot(2,2,1),imshow(RGB_white_out),title('��ƽ����ͼ');
subplot(2,2,2),imshow(RGB),title('ԭͼ');

%% �Ҷ������㷨����ƽ�⣩%%