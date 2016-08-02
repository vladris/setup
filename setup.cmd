echo off

echo Bootstrap
echo ---------

choco install -y curl

echo Git setup
echo ---------

choco install -y git

echo Vim setup
echo ---------

choco install -y vim

:: get vimrc
curl -k https://raw.githubusercontent.com/vladris/setup/master/dotfiles/.vimrc > %USERPROFILE%\_vimrc

:: ensure we have the directories we need
mkdir %USERPROFILE%\vimfiles\autoload
mkdir %USERPROFILE%\vimfiles\bundle
mkdir %USERPROFILE%\vimfiles\undodir

:: get Pathogen
curl -k https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim > %USERPROFILE%\vimfiles\autoload\pathogen.vim

:: get other plugins
pushd %USERPROFILE%\vimfiles\bundle
git clone https://github.com/altercation/vim-colors-solarized
git clone https://github.com/Lokaltog/vim-powerline 
git clone https://github.com/ctrlpvim/ctrlp.vim
git clone https://github.com/ciaranm/detectindent
popd

:: get DejaVu fonts for Powerline
curl -k "https://raw.githubusercontent.com/vladris/setup/master/fonts/DejaVuSansMono/DejaVuSansMono-Powerline.ttf" > "%WINDIR%\Fonts\DejaVuSansMono-Powerline.ttf"
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "DejaVu Sans Mono for Powerline (TrueType)" /t REG_SZ /d "DejaVuSansMono-Powerline.ttf" /f
curl -k "https://raw.githubusercontent.com/vladris/setup/master/fonts/DejaVuSansMono/DejaVuSansMono-Bold-Powerline.ttf" > "%WINDIR%\Fonts\DejaVuSansMono-Bold-Powerline.ttf"
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "DejaVu Sans Mono Bold for Powerline (TrueType)" /t REG_SZ /d "DejaVuSansMono-Bold-Powerline.ttf" /f
curl -k "https://raw.githubusercontent.com/vladris/setup/master/fonts/DejaVuSansMono/DejaVuSansMono-Oblique-Powerline.ttf" > "%WINDIR%\Fonts\DejaVuSansMono-Oblique-Powerline.ttf"
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "DejaVu Sans Mono Oblique for Powerline (TrueType)" /t REG_SZ /d "DejaVuSansMono-Oblique-Powerline.ttf" /f
curl -k "https://raw.githubusercontent.com/vladris/setup/master/fonts/DejaVuSansMono/DejaVuSansMono-BoldOblique-Powerline.ttf" > "%WINDIR%\Fonts\DejaVuSansMono-BoldOblique-Powerline.ttf"
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "DejaVu Sans Mono Bold Oblique for Powerline (TrueType)" /t REG_SZ /d "DejaVuSansMono-BoldOblique-Powerline.ttf" /f
