from os import path
import subprocess
import json

#from .path import qtile_path

#config = path.join(qtile_path, 'config.json')



def load_font():
    font = 'UbuntuMono Nerd Font Bold'
    config = path.join(path.expanduser('~'), '.config', 'qtile', 'config.json')
    if path.isfile(config):
        with open(config) as file_config:
            data = json.loads(file_config.read())
            if 'font' in data:
                print('true')
            else:
                print('false')
            '''
                font = json.loads(file_config.read())['font']
            else:
                with open(config, 'w') as file:
                    data['font'] = font
                    data_encoded = json.dums(data, indent=4)
                    file.write(data_encoded)
            '''
    return font

load_font()
'''
if __name__ == 'settings.font':
    fonts = load_font()
'''
