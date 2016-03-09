#/bin/sh

printf "Cloning Textual... "
git clone -q https://github.com/Codeux-Software/Textual.git
echo "Done!"

printf "Cloning submodules... "
cd Textual
git submodule -q update --init --recursive
echo "Done!"

printf "Patching... "
cd "Resources/Build Configurations"
echo 'CODE_SIGN_IDENTITY =' >'Code Signing Identity.xcconfig'
sed -i '' 's/MANAGER=1/MANAGER=0/' 'Shared Standard Release Configuration.xcconfig'
sed -i '' 's/SPARKLE_ENABLED=1/SPARKLE_ENABLED=0/' 'Shared Standard Release Configuration.xcconfig'
echo "Done!"

cd ../..

printf "Building Textual... "
if xcodebuild -target 'Textual (Standard Release)' -configuration 'Release'>log ; then
	echo "Done!"
	osascript -e 'display notification "Build succeeded" with title "build_textual.sh" sound name "Glass"'
	pwd
	cd Build\ Results/Release/
	open .
else
	echo "Fuck!"
	cat log
	osascript -e 'display notification "Something went wrong" with title "build_texual.sh" sound name "Sosumi"'
fi
