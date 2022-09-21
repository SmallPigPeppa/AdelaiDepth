export PYTHONPATH=../../Train:${PYTHONPATH}
export CUDA_VISIBLE_DEVICES=0

python ../tools/train.py \
--dataset gta \
--dataroot /share/wenzhuoliu/torch_ds/GTA-IM/FPS-5 \
--backbone resnet50 \
--dataset_list 2020-06-11-10-06-48 \
--batchsize 2 \
--base_lr 0.001 \
--use_tfboard \
--thread 4 \
--loss_mode _ranking-edge_pairwise-normal-regress-edge_msgil-normal_meanstd-tanh_pairwise-normal-regress-plane_ranking-edge-auxi_meanstd-tanh-auxi_ \
--epoch 2 \
--lr_scheduler_multiepochs 1 \
--val_step 10000 \
--snapshot_iters 50 \
--log_interval 5 
