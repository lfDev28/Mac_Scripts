# Create a new Python project with a virtual environment and an app.py file

This shell script creates a new Python project with a virtual environment and an `app.py` file. It can be run from anywhere in the terminal using the `newpy` command.

## Requirements

- Python 3.x
- pip3
- virtualenv

## Usage

1. Open your terminal and navigate to the directory where you want to create the new Python project.

2. Run the following command to create a new Python project:

```
newpy <project_name>
```

Replace `PROJECT_NAME` with the name you want to give your new Python project.

This command will create a new directory with the specified name, and then create a virtual environment and an `app.py` file inside it.

You can run the `newpy` command from anywhere in your terminal.

## Customization

You can modify the shell script to fit your specific needs. For example, you can:

- Change the name of the virtual environment by modifying the `venv` argument in the `python3 -m venv venv` line.
- Add more files or directories to the new project by using additional shell commands.
- Modify the `newPy` alias to use a different name or syntax.

## Setting up macro on Mac OS

- Host the script somewhere on your local machine.
- Navigate to the directory and run the following command to make the script executable:

```bash
chmod +x script.sh
```

- Open your `~/.zshrc` file in a text editor and add the following line:

```bash
alias newpy="path/to/script.sh"
```

- Save the file and run the following command to apply the changes:

```bash
source ~/.zshrc
```

- Now you can run the `newpy` command from anywhere in your terminal.
