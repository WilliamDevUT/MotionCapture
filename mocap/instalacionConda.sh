
echo "📦 Descargando Miniconda..."
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh

echo "📦 Instalando Miniconda..."
bash miniconda.sh -b -p $HOME/miniconda3

echo "🔁 Reiniciando el shell actual.."
exit
echo "   También puedes correr:"
echo "   source ~/miniconda3/bin/activate && conda init"

# Activación directa (opcional aquí, pero útil si el script no se interrumpe)
source ~/miniconda3/bin/activate
~/miniconda3/bin/conda init

echo "✅ Miniconda instalada:"
conda --version

echo "🐍 Creando entorno 'easymocap' con Python 3.9..."
conda create -y -n easymocap python=3.9

echo "✅ Activando entorno..."
conda activate easymocap

echo "📦 Instalando dependencias básicas..."
# Aquí puedes incluir el zip, requirements o paquetes base
pip install numpy opencv-python zipfile36 # por ejemplo

echo "✅ Ambiente listo. Usa: conda activate easymocap"
