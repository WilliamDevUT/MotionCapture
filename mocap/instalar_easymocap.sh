echo "🔧 Creando entorno Conda: easymocap"
conda create -n easymocap python=3.9 -y

echo "📦 Activando entorno"
source $(conda info --base)/etc/profile.d/conda.sh
conda activate easymocap

echo "📁 Clonando EasyMocap"
git clone https://github.com/zju3dv/EasyMocap.git
cd EasyMocap

echo "💾 Instalando PyTorch nvidia"
pip install ./torch-1.12.0+cu116-cp39-cp39-linux_x86_64.whl
pip install ./torchvision-0.13.0+cu116-cp39-cp39-linux_x86_64.whl


echo "💾 Instalando PyTorch CPU"
pip install torch==1.9.1+cpu torchvision==0.10.1+cpu -f https://download.pytorch.org/whl/torch_stable.html

echo "📚 Instalando requerimientos"
pip install -r requirements.txt

echo "🖼️ Instalando pyrender (opcional)"
pip install pyrender

echo "📚 Instalando modelos smplx"
gdown https://drive.google.com/uc?id=1uDU4C0z3nJvvD_h6CJlzrIVSKF551Qns

echo "⚙️ Activando EasyMocap en modo desarrollo"
python setup.py develop

echo "✅ Instalación completada. Para usar EasyMocap, recuerda ejecutar:"
echo "conda activate easymocap && cd EasyMocap"