export LD_LIBRARY_PATH=/usr/local/cuda-12.4/lib64:$LD_LIBRARY_PATH
export HUGGING_FACE_HUB_TOKEN=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
export HF_ENDPOINT="https://hf-mirror.com"
export DS_SKIP_CUDA_CHECK=1

accelerate launch /data/wmz_workspace/RLHF-Reward-Modeling/bradley-terry-rm/gemma_rm.py \
            --model_name /data/wmz_workspace/checkpoints/gemma-2b-it \
            --max_length 4096 \
            --train_set_path weqweasdas/preference_dataset_mixture2_and_safe_pku \
            --deepspeed /data/wmz_workspace/RLHF-Reward-Modeling/deepspeed_configs/deepspeed_2.json \