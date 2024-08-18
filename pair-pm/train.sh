export HUGGING_FACE_HUB_TOKEN=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
export export HF_ENDPOINT="https://hf-mirror.com"

# python process_pair_data.py
CUDA_VISIBLE_DEVICES="0,1,2,3,4,5,6,7" torchrun --nproc_per_node 8 --master_port 20001 -m axolotl.cli.train /home/wmz/RLHF-Reward-Modeling/pair-pm/llama3-8b-it.yaml