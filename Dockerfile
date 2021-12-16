FROM node:lts-alpine
ENV NODE_ENV=production
           
LABEL maintainer = "khawla banydomi<cloudcomputing1989@outlook.com>" \
        com.schedulerapi.version = "4.0.0" \
        com.schedulerapi.release-date = "2020-11-21" \
        com.schedulerapi.repository = "https://github.com/khawla-k-banydomi/schedulerapi"

# We create the directories that we are going to need and we set the node user as the owner
RUN mkdir -p / app / test / && chown -R node / app

# We change to our working directory that we just created
WORKDIR / app

# We copy the dependency files and set the node user as owner
COPY --chown = node package * .json gulpfile.js ./

# We install the gulp client (globally) to be able to launch tasks, including installation and test
# With npm link we create a symbolic link so that it detects it in node_modules and so we can use it
# Finally we install the gulp run module (locally) since we use it in our task manager
RUN npm install -g gulp-cli && npm link gulp && npm install gulp-run

# We change the node user to have no privileges
USER node

# We launch the task that installs the dependencies
RUN gulp install


# We update the PATH variable that contains the binaries that we can execute
# Adding our node_modules / js

ENV PATH = / app / node_modules / .bin: $ PATH

WORKDIR / app / test


# We call the task that launches the tests
CMD [ "gulp" , "test" ]
