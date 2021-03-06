set -e
./rebar3 do update, upgrade
git init
ls | grep -v "^\(_build\|run.me.first.sh\)\$" | xargs git add
git add .gitignore rebar.lock
git commit -m "Initial commit"
git tag 0.1.0
echo "############################################################"
echo "# Run manually:"
echo "#   git remote add origin {your-new-git-remote-repo}"
echo "#   git push -u origin master"
echo "#   git push --tags"
echo "############################################################"
rm run.me.first.sh
