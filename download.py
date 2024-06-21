from modelscope import snapshot_download 
model_dir = snapshot_download("LLM-Research/Phi-3-mini-4k-instruct", local_dir="/data1/WM_workspace/checkpoints/phi3-it")