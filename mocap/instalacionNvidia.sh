echo "🔧 Creando entorno Conda: easymocap"
conda create -n easymocap python=3.9 -y

echo "📦 Activando entorno"
source $(conda info --base)/etc/profile.d/conda.sh
conda activate easymocap

echo "📁 Clonando EasyMocap"
git clone https://github.com/zju3dv/EasyMocap.git
cd EasyMocap

echo "💾 Instalando PyTorch nvidia"
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
//inutil
pip install ./torch-1.12.0+cu116-cp39-cp39-linux_x86_64.whl
pip install ./torchvision-0.13.0+cu116-cp39-cp39-linux_x86_64.whl

echo "📚 Instalando requerimientos"
nano requirements.txt
pip install -r requirements.txt

echo "🖼️ Instalando pyrender (opcional)"
pip install pyrender

echo "💿 Instalando modelos smplx"
gdown https://drive.google.com/uc?id=1uDU4C0z3nJvvD_h6CJlzrIVSKF551Qns

echo "🎞️ Instalando Videos EasyMocap"
wget "https://www.dropbox.com/scl/fi/rcp8bbi574dj7fby0vpmy/zju-ls-feng.zip?dl=1&e=1&rlkey=w60lasygtaiemgrmrphvc2ozt" -O zju-ls-feng.zip

echo "⌨️ Instalando Mini Drivers"
sudo apt update
sudo apt install libgl1
sudo apt install libgl1-mesa-glx libgl1-mesa-dri mesa-utils

echo "⚙️ Activando EasyMocap en modo desarrollo"
python setup.py develop

echo "✅ Instalación completada. Para usar EasyMocap, recuerda ejecutar:"
echo "conda activate easymocap && cd EasyMocap"
