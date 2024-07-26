# test the TSN and TSM on Kinetics using 8-frame, you should get top-1 accuracy around:
# TSN: 68.8%
# TSM: 71.2%

# test TSN: Overall Prec@1 68.35% Prec@5 87.88%
#CUDA_VISIBLE_DEVICES=2,3 python test.py kinetics \
#    --weights=pretrained/pretrained/TSM_kinetics_RGB_resnet50_avg_segment5_e50.pth \
#    --test_segments=8 --test_crops=1 \
#    --batch_size=1

# test TSM：Overall Prec@1 71.05% Prec@5 89.74%
CUDA_VISIBLE_DEVICES=2,3 python test.py kinetics \
    --weights=pretrained/TSM_kinetics_RGB_resnet50_shift8_blockres_avg_segment8_e50.pth \
    --test_segments=8 --test_crops=1 \
    --batch_size=1