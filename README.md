# Popular libraries using on Ubuntu
## 1. Anaconda
Install on Ubuntu 20.04. For installing Anaconda, we have lots of specific guides on the internet. I recommend the article of Linuxize:   
https://linuxize.com/post/how-to-install-anaconda-on-ubuntu-20-04/   
After installation, refer to check the conda version to make sure successful installation:   
```
conda -V
```
### Create, activate/deactivate virtual env with anaconda
```
conda create -n envname python=3.8 scipy=0.15.0 
```
- Choose python version suit your demand.
- 'spicy' reprents other packages we want to install in virtual env.
```
conda activate envname
conda deactivate
```
 
## 2. OpenCV
Install on Ubuntu 20.04
```
sudo apt update
sudo apt install libopencv-dev python3-opencv
```
After installing, if default python version and python version supported by OpenCV are different, this will lead to a problem   
<strong>ModuleNotFoundError: No module named 'cv2' </strong>.  
To solve this, check your python version first. Open terminal.
```
python3 --version
```
Check the python version supported by OpenCV using the command below. If there are more than 1 python version, maybe your opencv was installed with the left python version.
```
ls /usr/bin/python*
```
In this case, test with other python version, assumed we have version 3.8. Use below command and you will see OpenCV version. 
```
python3.8 -c "import cv2; print(cv2.__version__)"
```
#### Alias to set specific python version as default
If you use OpenCV many times, you will need to set python version supported by OpenCV as default. To do this with example <strong>python3.8</strong>, open .bashrc
```
sudo gedit ~/.bashrc
```
At the end of file. Type the command and then Save. <strong>DONE</strong>
```
alias python=python3.8
```
## 3. TensorFlow
Of courses, we should refer the official link on tensorflow website. In this guideline, try to solve some problems facing after installation.   
Link: https://www.tensorflow.org/install/pip   
To check if tensorflow is installed properly, use the command below. Just make sure you use the correct python version.
```
python3.8 -c "import tensorflow as tf; print(tf.__version__)"
```
#### Error: libdevice not found at ./libdevice.10.bc
When this error happens, mean system can not find libdevice in nvvm folder. To solve this:
- Type "whereis cuda" command, access the directory, find folder named <strong>nvvm</strong>
- Inside nvvm, it will have libdevice file, copy (search path using <strong>pwd</strong>) and paste into a new <strong>nvvm</strong> folder at your current dir.   
Below commands are orderly for searching cuda dir, copying file. The cuda_nvvm_dir will be often <strong>/usr/lib/cuda</strong>
```
whereis cuda
```
```
sudo cp [cuda_nvvm_dir] [your_current_working_dir]
```
For reference link: https://stackoverflow.com/questions/72499414/i-got-an-error-about-error-cant-find-libdevice-directory-cuda-dir-nvvm-libd   
## 4. PyTorch 
For your reference, I recommend this link: https://varhowto.com/install-pytorch-cuda-10-2/   
