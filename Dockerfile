# start from base
FROM public.ecr.aws/s2m8b0g0/alpine-node8.4:latest
# make the directory on the Alpine Linux machine
RUN mkdir -p /usr/src/app

# set working directory
WORKDIR /usr/src/app

# copy the application code to the working directory
COPY . .

# fetch app specific dependencies
RUN npm install

# expose port
EXPOSE 3000

# start run with this command
CMD [ "node", "server.js" ]
