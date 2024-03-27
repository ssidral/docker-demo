# image
FROM python:3.9-slim
 
# setting environment variables
ENV APP_HOME /app
ENV PORT 80
 
# setting directory in the container
WORKDIR $APP_HOME
 
# Copy files current dir to /app
COPY . $APP_HOME
 
# Intalling dependancies
RUN pip install --no-cache-dir Flask  #use new cache
 
# Expose the port
EXPOSE $PORT

#VOLUME $APP_HOME
 
# ONBUILD: copy requirements.txt and install dependencies
#ONBUILD COPY requirements.txt $APP_HOME/
#ONBUILD RUN pip install --no-cache-dir -r requirements.txt
 
# ONBUILD: expose the port 
ONBUILD EXPOSE $PORT
 
# Print message
CMD echo "Container started." 
 
# command to run application
CMD ["python", "app.py"]
