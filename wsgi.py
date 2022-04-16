import os
from dotenv import load_dotenv

flaskenv_path = os.path.join(os.path.dirname(__file__), '.flaskenv')
env_path = os.path.join(os.path.dirname(__file__), '.env')
if os.path.exists(flaskenv_path):
    load_dotenv(flaskenv_path)
if os.path.exists(env_path):
    load_dotenv(env_path)

from bluelog import create_app

app = create_app('production')
