python -m torch.distributed.launch --nproc_per_node $NGPUS tools/test_net.py \
--config-file configs/kitti/cyclist/idispnet.yaml \
DATASETS.TEST "('kitti_val_cyclist',)"

python -m torch.distributed.launch --nproc_per_node $NGPUS tools/test_net.py \
--config-file configs/kitti/cyclist/rcnn.yaml \
--ckpt models/kitti/cyclist/rcnn/pointrcnn.pth \
DATASETS.TEST "('kitti_val_cyclist',)"