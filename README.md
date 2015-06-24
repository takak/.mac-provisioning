# 説明

開発環境の自動構築を行います

# 使い方

## 下準備

### terminal

1. Homebrewを入れる
    sudo xcodebuild -license
    xcode-select --install
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)u
    brew update # Homebrewを最新にしておく

2. Ansibleを入れる
    brew install python # Ansible用に必要
    brew install ansible

3. 構築
    git clone https://github.com/takak/.mac-provisioning.git
