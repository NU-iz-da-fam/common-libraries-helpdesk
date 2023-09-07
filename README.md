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
If you use OpenCV many times, you will need to set python version supported by OpenCV as default. To do this, open .bashrc
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
#### libdevice not found at ./libdevice.10.bc
