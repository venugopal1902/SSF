CUDA_VISIBLE_DEVICES=-1,  python  -m torch.distributed.launch --nproc_per_node=4  --master_port=12346  \
	train.py /path/to/cifar100 --dataset torch/cifar100 --num-classes 100 --model vit_base_patch16_224_in21k  \
    --batch-size 32 --epochs 100 \
	--opt adamw  --weight-decay 0.05 \
    --warmup-lr 1e-7 --warmup-epochs 10  \
    --lr 1e-3 --min-lr 1e-8 \
    --drop-path 0 --img-size 224 \
	--model-ema --model-ema-decay 0.99992  \
	--output  output/vit_base_patch16_224_in21k/cifar_100/ssf \
	--amp --tuning-mode ssf --pretrained  \
