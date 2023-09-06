# Popular libraries using on Ubuntu
## 1. OpenCV
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
## 2. TensorFlow
