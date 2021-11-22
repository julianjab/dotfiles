FLUTTER_VERSION=2.5.1
#Flutter
#brew install --cask flutter

#Flutter Version Manager
brew tap leoafarias/fvm
brew install fvm
fvm install $FLUTTER_VERSION
fvm global $FLUTTER_VERSION
ln -s $HOME/fvm/default/bin/flutter /usr/local/bin/flutter
ln -s $HOME/fvm/default/bin/dart /usr/local/bin/dart

#Android
flutter config --android-studio-dir /Applications/Android\ Studio.app
sdkmanager "system-images;android-31;google_apis_playstore;x86_64" "system-images;android-30;google_apis_playstore;x86"

#Xcode
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
sudo gem install cocoapods

#Check install
flutter doctor