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
sudo apt install -y wget

echo "✅ Ambiente listo. Usa: conda activate easymocap"
