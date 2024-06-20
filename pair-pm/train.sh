export HUGGING_FACE_HUB_TOKEN=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

CUDA_VISIBLE_DEVICES="0,1,2,3,4,5,6,7" torchrun --nproc_per_node 8 --master_port 20001 -m axolotl.cli.train qwen2.yaml