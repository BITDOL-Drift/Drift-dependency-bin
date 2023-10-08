sudo apt update 
sudo apt install -y python-pip python-h5py
python2 -m pip install --upgrade setuptools wheel numpy future
python2 -m pip install grpcio keras_preprocessing==1.1.2 mock==3.0.5 protobuf==3.6.1 --no-deps

# sudo -H pip install tensorflow-1.15.5-cp27-cp27mu-linux_aarch64.whl
