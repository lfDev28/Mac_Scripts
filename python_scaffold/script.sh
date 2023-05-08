mkdir "$PWD/$1"
cd "$1"
python3 -m venv venv
source venv/bin/activate
touch app.py
git init
touch .gitignore
echo "venv" >> .gitignore
echo "__pycache__" >> .gitignore
echo ".DS_Store" >> .gitignore
echo "env" >> .gitignore
echo ".vscode" >> .gitignore
touch README.md