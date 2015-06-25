[![Build Status](https://travis-ci.org/takak/.mac-provisioning.svg?branch=master)](https://travis-ci.org/takak/.mac-provisioning)

# 説明

Ansibleを使って開発環境の自動構築を行います

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
        cd .mac-provisioning
        HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-playbook -i hosts -vv localhost.yml

4. dotfileとかあったら適宜適用

# 何が入るか

- だいたいRubyとPHPで開発がすぐできるようになる
- DBはMySQL
- ついでにDropboxとかも入るので開発用途以外でも多少手間が減る
