VERSION="11.8"
if ! grep -q "/usr/local/cuda-${VERSION}/bin" ~/.bashrc; then
  echo "export PATH=/usr/local/cuda-${VERSION}/bin:\$PATH" >> ~/.bashrc
fi
if ! grep -q "/usr/local/cuda-${VERSION}/lib64" ~/.bashrc; then
  echo "export LD_LIBRARY_PATH=/usr/local/cuda-${VERSION}/lib64:\$LD_LIBRARY_PATH" >> ~/.bashrc
fi
source ~/.bashrc
