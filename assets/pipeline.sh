#!/usr/bin/env/ bash

if [ $(python3 StaticCheck.py) = 0 ]; then
	echo 'config not present!'
	exit 2
fi
echo 'config present!'

if [ $(python3 StaticVerification.py) = 0 ]; then
	echo 'Verification failed!: Name and ID missing from header'
	exit 2
fi

echo 'Verification passed!'
#npm install
npm run build
cd src/__tests__
npm run test
cd ../../../
git add .
git commit -m COMPX341-21A1V1
git push origin master 
git status