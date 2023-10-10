export ANDROID_SDK_ROOT=/Users/julianandresbuitrago/Library/Android/sdk
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/julianandresbuitrago/Library/Android/sdk/cmdline-tools/bin:/Users/julianandresbuitrago/Library/Android/sdk/platform-tools:/Users/julianandresbuitrago/Library/Android/sdk/cmdline-tools/latest/bin:/Users/julianandresbuitrago/Library/Android/sdk/platform-tools:/Users/julianandresbuitrago/Library/Android/sdk/cmdline-tools/latest/bin:/Users/julianandresbuitrago/Library/Android/sdk/platform-tools

alias adblog="adb logcat --pid='adb shell pidof -s com.lahaus.client'"


export PATH="$PATH":"$HOME/.pub-cache/bin"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh


## Golang
export GOROOT=/usr/local/go
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"
export GOPRIVATE="github.com/la-haus/*"

## La Haus
export NPM_ACCESS_TOKEN=XXX
export GITHUB_TOKEN=XXX
export GH_TOKEN=XXX
export REGISTRY_GITHUB_TOKEN=XXX
export FORTAWESOME_TOKEN=XXX

# Staging
export FINTECH_WRAPPER_OAUTH_CLIENT_SECRET=XXX

# Convert video to gif file.
# Usage: video2gif video_file (scale) (fps)
video2gif() {
  ffmpeg -y -i "${1}" -vf fps=${3:-10},scale=${2:-320}:-1:flags=lanczos,palettegen "${1}.png"
  ffmpeg -i "${1}" -i "${1}.png" -filter_complex "fps=${3:-10},scale=${2:-320}:-1:flags=lanczos[x];[x][1:v]paletteuse" "${1}".gif
  rm "${1}.png"
}