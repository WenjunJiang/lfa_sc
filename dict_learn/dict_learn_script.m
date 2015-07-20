datapath='USPS data/';
train_data=load([datapath 'USPS_Train_Data.mat']);
train_data=train_data.Train_Data;
COEFF_SIZE=2000;
ALPHA=0.1;
CONV_THRES=1e-4;
LR=struct('alpha',1,'t0',0);
MAX_ITER=2000;
Wd=dict_learn(train_data, 0, ALPHA, COEFF_SIZE, LR, CONV_THRES, MAX_ITER);
dict.Wd=Wd;
dict.alpha=ALPHA;
dict.thres=CONV_THRES;
save(['my_sp_code/dict_',num2str(COEFF_SIZE,'%d'),'.mat'],'dict');
