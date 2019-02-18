# This script updates all dependencies on my mac
# brew, global npm, pip, gcloud, optionally android

brew update
brew upgrade

# npm install -g npm
npm list -g --depth=0
for package in $(npm -g outdated --parseable --depth=0 | cut -d: -f2)
do
    npm -g install "$package"
done
npm list -g --depth=0

pip install --upgrade pip

gcloud components update

#android
