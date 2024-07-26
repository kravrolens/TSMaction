import subprocess
import os

# root_path = '/home/liuj/Data/Kinetics-400/train_zip'
# for zip_file in os.listdir(root_path):
#     if zip_file.endswith('.tar'):
#         print('unzip file: ', zip_file)
#         subprocess.call('tar xvf {} -C /home/liuj/Data/Kinetics-400/train'.format(os.path.join(root_path, zip_file)), shell=True)

root_path = '/home/liuj/Data/Kinetics-400/train'
tar_path = '/home/liuj/Data/Kinetics-400/trainall'

for subfile in os.listdir(root_path):
    print('subfile:', subfile)
    subprocess.call('mv {}/* {}'.format(os.path.join(root_path, subfile), tar_path), shell=True)
    # break
