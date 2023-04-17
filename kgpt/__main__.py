"""Main script for the k8scli-gpt package."""
import os
import sys
from kgpt.utils import load_config, set_api_key
from kgpt.agent import execute

if __name__ == '__main__':
    config_file_path = 'config.ini'
    if 'OPENAI_API_KEY' not in os.environ and not config_file_path:
        raise ValueError(
            'Environment variable OPENAI_API_KEY not found, you can set it in Project Settings')

    if not config_file_path:
        set_api_key()
    else:
        load_config(config_file_path)

    execute(sys.argv[1])