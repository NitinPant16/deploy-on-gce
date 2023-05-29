#FROM python:3.8-slim-buster

#WORKDIR /app

#COPY requirements.txt requirements.txt
#RUN pip3 install -r requirements.txt

#COPY . .

#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"] 


FROM node:alpine
WORKDIR /app
COPY package*.json ./

RUN npm install --production

COPY src .

CMD ["node", "index.js"]
