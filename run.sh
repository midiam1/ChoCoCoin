    # Proyectos Himmeros
    # sistemas_que_funcionan_
    # Versión 0.3

    # Instalo git
sudo apt -y install git

    # Descargo Chococoin desde su repositorio y accedo al directorio
git clone https://github.com/Chococoin/ChocoCoin && cd ChocoCoin

    # Scripts de  librerías necesarias para compilar ChocoCoin
sudo apt-get -y install build-essential libssl-dev libboost-all-dev

    # Resuelve un error con OpenSSL ya que necesita una versión vieja

sudo apt-get -y remove libssl-dev
sudo apt -y install libssl1.0-dev

sudo add-apt-repository -y ppa:bitcoin/bitcoin
sudo apt-get -y update
sudo apt-get install -y libdb4.8-dev libdb4.8++-dev
sudo apt-get install -y libminiupnpc-dev

    # Vamos a necesitar memoria, así que ampliamos la memoria virtual o swap file

sudo swapoff /swapfile # Apago la memoria virtual
sudo rm /swapfile      # Elimino la memorial virtual

sudo dd if=/dev/zero of=/swapfile bs=1024 count=4194304 # Creo una memoria virtual más grande
sudo chmod 600 /swapfile
sudo mkswap /swapfile && sudo swapon /swapfile

    # Corrige un posible error de permisos

chmod 755 ../src/leveldb/build_detect_platform

    # Y limpio, para que no de errores

cd leveldb
make clean
cd ..