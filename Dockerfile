FROM dgroup/java8-gradle

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# # Build app
RUN gradle stage

# Launch app on port 8080
CMD ["/bin/bash", "start.sh"]
EXPOSE 8080
