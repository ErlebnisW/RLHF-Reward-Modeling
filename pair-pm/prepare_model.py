import torch
from transformers import AutoModelForCausalLM, AutoTokenizer

name = "google/gemma-2b-it"
tokenizer_name = name

model = AutoModelForCausalLM.from_pretrained(
    name,
    torch_dtype=torch.bfloat16,
)

tokenizer = AutoTokenizer.from_pretrained(tokenizer_name)
tokenizer.pad_token = tokenizer.eos_token
tokenizer.pad_token_id = tokenizer.eos_token_id
model.config.pad_token_id = tokenizer.pad_token_id

model.save_pretrained("/data1/WM_workspace/checkpoints/gemma-2b-it")
tokenizer.save_pretrained("/data1/WM_workspace/checkpoints/gemma-2b-it")

