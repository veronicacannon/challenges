Simple repo to hold small challenges with tests.

Try it this way:
* Install Docker Desktop
* Pull the Git repo and cd into the repo folder
* Build the image `docker build -t test_challenges .`
* Run a test `docker run --rm -it test_challenges:latest ruby ./which_case/which_case_test.rb`