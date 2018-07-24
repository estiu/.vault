cd
echo 'user-agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36"' >> ~/.curlrc
/usr/bin/ruby -e "$(curl https://raw.githubusercontent.com/estiu/install/noup/install.sh | bash)"
brew install p7zip
git clone https://github.com/estiu/.vault.git .secrets
cd .secrets
7za x hyp.7z
7za x sols.7z
sudo chown -R $USER all
rm -rf ~/.ssh
rm -rf *.7z
rm -rf .git*
cp -r all/* ~
cp -r all/.* ~
cd
~/.macos/README
# This .secrets directory is good to keep. It will host the .secrets.sh file.
# .vault will be cloned separarely, as part of the README script.
