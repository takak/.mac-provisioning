require 'spec_helper'

describe command('which brew') do
  its(:stdout) { should match(%r{/bin/brew}) }
end

describe command('brew tap') do
  its(:stdout) { should match(%r{homebrew\/binary}) }
  its(:stdout) { should match(%r{homebrew\/dupes}) }
  its(:stdout) { should match(%r{caskroom\/cask}) }
end

target_packages = [
  # Rubyの使用（管理はrbenvを使う）
  'readline',
  'openssl',
  'rbenv',
  'ruby-build',
  # 必要なソフト
  'mysql',
  'imagemagick',
  # 便利アイテム達
  'git',
  'zsh',
  'wget',
  'vim',
  'screen',
  'nkf',
]

target_packages.each do|package|
  describe file(homebrew_cellar + '/' + package) do
    it { should be_directory }
  end
end
