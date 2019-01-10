set encoding=utf-8
scriptencoding utf-8

set autoindent             "改行時に前の行のインデントを計測
set smartindent            "改行時に入力された行の末尾に合わせて次の行のインデントを増減する 
set cindent                "Cプログラムファイルの自動インデントを始める
set smarttab               "新しい行を作った時に高度な自動インデントを行う
set expandtab              "タブ入力を複数の空白に置き換える 
set tabstop=2              "タブを含むファイルを開いた際, タブを何文字の空白に変換するか
set shiftwidth=2           "自動インデントで入る空白数
set softtabstop=0          "キーボードから入るタブの数
set title                  " ウインドウのタイトルバーにファイルのパス情報等を表示する
set number                 " 行番号を表示する
set wildmenu               " wildnemuを有効に
inoremap <silent> jj <ESC> " インサートモードでESCをjjに割り当て
cnoremap count %s/./&/g    " countで文字数をカウント
nnoremap <silent><C-e> :NERDTreeToggle<CR>

if has("autocmd")
  "ファイルタイプの検索を有効にする
  filetype plugin on
  "ファイルタイプに合わせたインデントを利用
  filetype indent on
  "sw=softtabstop, sts=shiftwidth, ts=tabstop, et=expandtabの略
  autocmd FileType c           setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType ruby        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType js          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType zsh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scala       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType json        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scss        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sass        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript  setlocal sw=4 sts=4 ts=4 et
endif

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/pi/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/pi/.cache/dein')
  call dein#begin('/home/pi/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/pi/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  " NERDTree
  call dein#add('scrooloose/nerdtree')

  " Ruby用
  call dein#add('tpope/vim-endwise')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('vim-ruby/vim-ruby')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" プラグインを削除したい場合はその行を消して↓↓
" call map(dein#check_clean(), "delete(v:val,'rf')")

"End dein Scripts-------------------------

