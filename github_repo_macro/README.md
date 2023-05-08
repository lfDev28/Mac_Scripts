# Script Package README

This script package provides a convenient way to create a new repository on Github using the Github API.

## Prerequisites

- Python 3.x
- pip
- virtualenv

## Installation

1. `cd` into the script directory
2. Create a python virtual environment: `python3 -m venv env`
3. Activate the virtual environment: `source env/bin/activate`
4. Install required packages:
   - python-dotenv
   - requests
5. Make the shell script executable: `chmod +x script.sh`
6. Create an alias to run the script: `alias create_repo='<path_to_script>/create_repo.sh'`
7. Configure the following environment variables in a .env file:
   - GITHUB_USERNAME
   - GITHUB_API_KEY (Retrieve this from your Github account settings)

## Usage

To create a new repository on Github using the Github API, simply run the following command:

create_repo <repo_name>

This will create a new repository with the specified name on Github, using the Github API. You will be prompted to enter your Github username and password.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
