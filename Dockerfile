FROM cr/userbot:slim-buster

#clonning repo 
RUN git clone https://github.com/devbarlo/cr.git /root/cr 
#working directory 
WORKDIR /root/cr

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","cr"]
