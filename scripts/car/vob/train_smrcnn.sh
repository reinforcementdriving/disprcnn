python -m torch.distributed.launch --nproc_per_node 4 \
tools/train_net.py \
--config-file configs/kitti/car/vob/mask.yaml