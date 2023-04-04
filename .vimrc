set number " muestra indice numerico a la izquierda
set mouse=a " habilita el cursor dentro de vim
set numberwidth=1 " aumenta el ancho del indice numerico
set clipboard=unnamed " deshabilita el portapapeles cuando copio texto en el modo visual
syntax enable " habilita la sintaxis de codigo para que aparezca a color
set showcmd " muestra los comandos que estoy ejecutrando
set ruler " muestra la posicion del cursor en coordenadas
set encoding=utf-8 " vim pueda trabajar con texto en diferentes idiomas y codificaciones de caracteres
set showmatch " al ubicarme en un parentesis, llave, corchete, etc me mostrara el cierre correspondiente a estos
set sw=2 " cuando estemos identando el tab seran 2 espacios
set laststatus=2 " la barra de estado siempre sera visible
set relativenumber

call plug#begin('~/.vim/plugged')

" syntax
Plug 'sheerun/vim-polyglot' " activa sintaxis de muchos lenguajes de programacion

" themes
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator' " permite usar ctrl + h, ctrl + l, ctrl + j, ctrl + k para navegar entre ventanas nerdtree 
Plug 'benmills/vimux' " permite enviar instrucciones a otros paneles de tmux desde vim
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf' " buscador de archivos en todo el sistema (se activa con las teclas space + p)
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors' " permite tener varios cursores y poder editar simultaneamente
Plug 'mhinz/vim-signify' " si agrego una linea aparece un signo + si elimino una linea aparecera cantidad de lineas eliminadas
Plug 'yggdroot/indentline' " muestra lineas donde hubo identaciones
Plug 'scrooloose/nerdcommenter' "comenta una linea (comando space + c + space)

" typing
Plug 'jiangmiao/auto-pairs' " autocompleta los parentecis, llaves, corchetes, comillas
Plug 'alvan/vim-closetag' " autocompleta las etiquetas html
Plug 'tpope/vim-surround' " envolver lo que yo seleccione en llaves, corchetes, parentesis, etc (al seleccionar siempre dejar el ultimo caracter de la cadena deseleccionada)(comando: space + S + caracter que envuelve)

" autocomplete


" test


call plug#end()

colorscheme gruvbox " da el color del tema
let g:gruvbox_contrast_dark = "hard" " da mas obscuridad al tema
let NERDTreeQuitOnOpen=1 " se cierra automaticamente nerdtree al abrir un archivo

let mapleader=" " " tecla maestra para encadenar comandos es space

" space + s habilita easymotion al digitar dos caracteres te permite ir rapidamente a las coinsidencias
nmap <Leader>s <Plug>(easymotion-s2)  
" space + nt habilita nerdtree para abrir el explorador de archivo
nmap <Leader>nt :NERDTreeFind<CR>
" space + w para guardar los cambios del archivo
nmap <Leader>w :w<CR>
" space + q para salir del archivo
nmap <Leader>q :q<CR>

" testing
" ejecuta el test mas cercano a la linea actual
nmap <Leader>t :TestNearest<CR>
" ejecuta todos los test del archivo
nmap <Leader>T :TestFile<CR>
" ejecuta toda la suit completa de test
nmap <Leader>TT :TestNearest<CR>

" split resize
" permite redimencionar los paneles de tmux
nmap <Leader>> 10<C-w>>
nmap <Leader>< 10<C-w><

" plugs
" abrir buscador de archivos
map <Leader>p :Files<CR>
" buscar una cadena de texto dentro de los archivos
map <Leader>ag :Ag<CR>

" tmux navigator
" para navegar entre los distintos paneles de tmux en vim
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

" buffers muestra todos los archivos que he abierto desde que uso vim

map <Leader>ob :Buffers<cr>

" faster scrolling
" permite moverse de 10 en 10 lineas con ctrl + j y ctrl k
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
