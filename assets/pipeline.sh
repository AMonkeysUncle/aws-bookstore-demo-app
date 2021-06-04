#GGPC@GGPC MINGW64 ~/COMPX341-A4/aws-bookstore-demo-app/assets

if [ $(python3 StaticCheck.py) = 0 ]; then
	echo 'config not present!'
	exit 2
fi
echo 'config check passed!'
#npm install
npm run build
cd src/__tests__
npm run test
cd ../../../
git add .
git commit -m $1
git push origin master 
git status