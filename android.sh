#Android
ANDROID_SDK_FOLDER="$HOME/Library/Android/sdk"

if ! [ -d $ANDROID_SDK_FOLDER ]; then 
    mkdir -p $ANDROID_SDK_FOLDER
    rm commandlinetools-mac-*
    wget "https://dl.google.com/android/repository/commandlinetools-mac-7583922_latest.zip"
    unzip -o commandlinetools-mac-*_*.zip -d "$ANDROID_SDK_FOLDER"
    mkdir -p "$ANDROID_SDK_FOLDER/cmdline-tools/latest"
    mv $ANDROID_SDK_FOLDER/cmdline-tools/* $ANDROID_SDK_FOLDER/cmdline-tools/latest
    rm commandlinetools-mac-7583922_latest.zip
fi


SDK_MANAGER="$ANDROID_SDK_FOLDER/cmdline-tools/latest/bin/sdkmanager"

yes | $SDK_MANAGER --licenses
$SDK_MANAGER "platform-tools" "platforms;android-31" "build-tools;31.0.0"                                         


if ! test $ANDROID_SDK_ROOT; then
    echo export ANDROID_SDK_ROOT="$ANDROID_SDK_FOLDER" >> "$HOME/.profile"
    echo export PATH=$PATH:$ANDROID_SDK_FOLDER/cmdline-tools/latest/bin:$ANDROID_SDK_FOLDER/platform-tools >> "$HOME/.profile"
fi

source "$HOME/.profile\n"

#Android Vysor
brew install scrcpy