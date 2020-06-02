FROM pytorch/pytorch:latest
 
RUN apt-get update && apt-get install -y --no-install-recommends \
         libsm6 \
         libxext6 \
         libxrender-dev \
         ffmpeg && \
     rm -rf /var/lib/apt/lists/*
     
RUN /opt/conda/bin/conda install -y opencv pandas scikit-learn matplotlib jupyter && \
    /opt/conda/bin/conda clean -ya
   
EXPOSE 8888
 
#docker build -t myimage \
#  --build-arg USER_ID=$(id -u) \
#  --build-arg GROUP_ID=$(id -g) .
 
#docker run --rm -it --gpus all -p 8888:8888 -v $PWD:/workspace --user="$(id -u):$(id -g)" test
 
#RUN jupyter notebook --no-browser --ip=0.0.0.0 --port=8888 --allow-root
