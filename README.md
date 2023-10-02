# dependency-bin

Dependency file for this project
 raspberrypi4b+ / aarch64 / Ubuntu 18.04 / ros melodic / Opencv 3.4 / python 3.6 / python 2.7

## Quick Start. 
Ros melodic dependends on python2 -> needs tensorflow 1.15
### 1. bazel 0.26.1   
bazel is build system for tensorlow.

if you need another version of tensorflow, you can use this binary file for build your tensorflow package from source.
Bazel and tensorflow needs below dependency packages to build.
```bash
sudo apt install build-essential openjdk-11-jdk git vim python zip unzip -y
sudo apt install python-pip
sudo apt install python-h5py
pip install --upgrade setuptools wheel numpy future
pip install grpcio keras_preprocessing==1.1.2 mock==3.0.5 protobuf==3.6.1 --no-deps
```
and git clone to your sources and build tensorflow.
```bash
git clone https://github.com/tensorflow/tensorflow
cd tensorflow
git checkout r1.15 # change branch with your usage
./configure
bazel build --config=opt  //tensorflow/tools/pip_package:build_pip_package ## this is build command. it will takes long time.
```

### 2. tensorflow 1.15

if you just need tensorflow package. just download **tensorflow-1.15.5-cp27-cp27mu-linux_aarch64.whl** to your workspace and build with below command.
```bash
sudo apt install -y python-pip ##dependencies
sudo apt install python-h5py
pip install --upgrade setuptools wheel numpy future
pip install grpcio keras_preprocessing==1.1.2 mock==3.0.5 protobuf==3.6.1 --no-deps
sudo -H pip install tensorflow-1.15.5-cp27-cp27mu-linux_aarch64.whl
```
check your version with
```python
import tensorflow as tf
print(tf.__version__) ## 1.15.5
```
