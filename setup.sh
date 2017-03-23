cp vimrc ~/.vimrc
#cp *.ttf /usr/share/fonts/
#cp %gconf.xml ~/.gconf/apps/gnome-terminal/profiles/
cat bashrc_plus >> ~/.bashrc
git config --global core.editor "vim"
git config --global alias.st status
git config --global user.name "kassybas"
cd ..
git clone https://github.com/kassybas/poem-rythm-writer.git
