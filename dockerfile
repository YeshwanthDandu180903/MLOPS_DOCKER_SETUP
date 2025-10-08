#use an official Python runtime as a parent image
FROM python:3.8-slim

#Set the working directory in the container
WORKDIR /app
#copy the current directory contents into the container at /app
COPY . /app


#Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

#make port 5000 avaiable to the world outside this container
EXPOSE 5000


#Define Enivorment Variable
ENV FLASK_APP=app.py

#Run the Flask App
CMD ["flask","run","--host=0.0.0.0"]
