#tessen(A6000) 
#FROM python:3.7.3
FROM python:3.7.3
WORKDIR /var/server
RUN pip install --upgrade pip
RUN wget https://download.pytorch.org/whl/cu90/torch-0.4.1.post2-cp37-cp37m-linux_x86_64.whl
COPY ./requirements.txt /var/server/requirements.txt
RUN pip install -r requirements.txt
COPY ./ /var/server/

CMD ["python", "Server.py"]
