cwd=$(pwd)
commit_msg=$1

echo "commit message = " $commit_msg

cd $cwd

git add .
git commit -m "$commit_msg"
git push

echo "Successfully pushed to GitHub"

