# TextualBuild

Simple bash script that builds the Textual IRC client from the latest sources. Adapted from a rc shell script found on /g/.

## Usage

Simply clone the repository and run the script:

	git clone https://github.com/Marneus68/BuildTextual.git
	cd BuildTextual
	./build_textual.sh

The cloning and building operations may take a little while (a few minutes)...

	Cloning Textual... Done!
	Cloning submodules... Done!
	Patching... Done!
	Building Textual... 

You will be warned by a system notification if the build succeeds or fails. If the build is successful, an instance of Finder will be opened where `Textual.app` is located. You can install it by dragging it in your `Applications` folder.

That's it.
