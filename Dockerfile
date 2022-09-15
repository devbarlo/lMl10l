FROM devbarlo/cr:alpine

#clonning repo 
RUN git clone https://github.com/devbarlo/cr/tree/master.git /root/cr
#working directory 
WORKDIR /root/devbarlo

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/cr/bin:$PATH"

CMD ["python3","-m","cr"]
