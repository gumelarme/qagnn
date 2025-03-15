import pprint
from transformers import OpenAIGPTConfig, BertConfig, XLNetConfig, RobertaConfig, AlbertConfig

if __name__ == "__main__":
    pprint.pprint(OpenAIGPTConfig().to_dict())
