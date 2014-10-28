Fx-ColorScheme
==============

My personal colorscheme for Vim

#Screenshots

####MacVim
![ScreenShot](http://i.cubeupload.com/gELCwc.png)

####CTerm Colors
![ScreenShot](http://i.cubeupload.com/PuEX0L.png)

##Light Mode
![ScreenShot](http://i.cubeupload.com/feSwmO.png)


##Airline Theme
Supports to statusline [Vim-Airline](https://github.com/bling/vim-airline).
![ScreenShot](http://i.cubeupload.com/XWVdCC.png)

##Terminal.app
![ScreenShot](http://i.cubeupload.com/d2bbqR.png)

#Installation

### Manual Installation

1. Just move fx.vim to your `~/.vim/colors` folder:

        $ cd Fx-ColorScheme/colors && mv fx.vim ~/.vim/colors 

2. If you want install [Airline](https://github.com/bling/vim-airline) configuration:

        $ cd Fx-ColorScheme && cp -R autoload/ ~/.vim/colors

### Pathogen
1. Download and install [Pathogen](https://github.com/tpope/vim-pathogen)
2. Clone Fx repository to your `~/.vim/bundle` directory:

        $ cd ~/.vim/bundle 
        $ git clone https://github.com/cesardeazevedo/Fx-ColorScheme.git

### Vundle
1. Put this line on your ~/.vimrc :

        Plugin 'cesardeazevedo/Fx-ColorScheme'


# Vim Configuration

After instalation, you just need enable your sytax hightlight and choose your background (dark or light), put the following lines in your `~/.vimrc` :
        
        syntax on
        set background = dark
        colorscheme fx

if you want a light background mode :

        syntax on
        set background = light
        colorscheme fx

#Palette Colors

| FX Colors    |   HEX   |     RGB     | CTERM |
| ------------ | ------- | ----------- |:-----:|
| base         | #202020 | 32  32  32  |  233  |
| base light   | #f5f5f5 | 245 245 245 |  231  |
| base2        | #303030 | 48  48  48  |  234  |
| base2 light  | #e7e7e7 | 231 231 231 |  172  |
| black        | #000000 | 0   0   0   |  232  |
| red          | #f40065 | 244 0   101 |  197  |
| red2         | #ff0000 | 255 0   0   |  9    |
| orange       | #ed9e26 | 237 158 38  |  214  |
| orange light | #f07800 | 240 120 0   |  172  |
| purple       | #7100ff | 113 0   255 |  99   |
| purple2      | #5f00d7 | 95  0   215 |  56   |
| green        | #a5ff0b | 165 255 11  |  154  |
| green light  | #00d506 | 0   213 6   |  34   |
| gray         | #606060 | 96  96  96  |  241  |
| grayLine     | #121212 | 18  18  18  |  233  |
| white        | #e7e7e7 | 231 231 231 |  231  |


#Contributions
I would be happy to receive contributions and pull requests. 

I did a palette which contains all colors in hex value, rga colors separately and cterm value respectively, maybe be enough to export to others editors.


#License 
[MIT](https://github.com/cesardeazevedo/Fx-ColorScheme/blob/master/LICENSE) Copyright (c) 2014 César Augusto D. Azevedo
