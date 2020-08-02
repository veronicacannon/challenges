Simple repo to hold small challenges with tests.

Try it this way:
* Install Docker Desktop
* Pull the Git repo and cd into the repo folder
* Run a test `docker run -it --rm --name test_runner -v "$PWD":/usr/src/app -w /usr/src/app -w /usr/src/app ruby:latest ruby ./longest_time/longest_time_test.rb`