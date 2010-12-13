" vim-pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" -------------------
" 色の設定
" -------------------
syntax on

highlight LineNr ctermfg=darkyellow    " 行番号
highlight NonText ctermfg=darkgrey
highlight Folded ctermfg=blue
highlight SpecialKey cterm=underline ctermfg=darkgrey
"highlight SpecialKey ctermfg=grey " 特殊記号

" 全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/

" タブ幅
set ts=4 sw=4
set softtabstop=4
set expandtab

" -------------------
" 日本語の設定
" -------------------
" 文字コードの自動認識

if &encoding !=# 'utf-8' 
  set encoding=japan
  set fileencoding=japan
endif

if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  " iconvがeucJP-msに対応しているかをチェック
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  " iconvがJISX0213に対応しているかをチェック
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  " fileencodingsを構築
  if &encoding ==# 'utf-8' 
    let s:fileencodings_default = &fileencodings
    let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
    let &fileencodings = &fileencodings .','. s:fileencodings_default
    unlet s:fileencodings_default
  else
    let &fileencodings = &fileencodings .','. s:enc_jis
    set fileencodings+=utf-8,ucs-2le,ucs-2
    if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
      set fileencodings+=cp932
      set fileencodings-=euc-jp
      set fileencodings-=euc-jisx0213
      set fileencodings-=eucjp-ms
      let &encoding = s:enc_euc
      let &fileencoding = s:enc_euc
    else
      let &fileencodings = &fileencodings .','. s:enc_euc
    endif
  endif

  " 定数を処分
  unlet s:enc_euc
  unlet s:enc_jis
endif

" 日本語を含まない場合は fileencoding に encoding を使うようにする
if has('autocmd')
  function! AU_ReCheck_FENC()
    if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
      let &fileencoding=&encoding
    endif
  endfunction
  autocmd BufReadPost * call AU_ReCheck_FENC()
endif
" -------------------
" 検索
" -------------------
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する(noignorecase)
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する(nosmartcase)
set smartcase
" 検索文字のハイライトをしない
set nohlsearch
" インクリメンタルサーチ
set incsearch

" -------------------
" Explore
" -------------------
let g:explHideFiles='^\.,\.gz$,\.exe$,\.zip$'  " 非表示の設定(aでトグル)
let g:explDetailedHelp=0
let g:explWinSize=''
let g:explSplitBelow=1
let g:explUseSeparators=1     " ディレクトリとファイルの間くらいにセパレータ表示

" -------------------
" バッファ関連
" -------------------
set hidden           " 切り替え時のundoの効果持続等

" -------------------
" その他
" -------------------
set notitle
set number
set list
set listchars=tab:\ \ ,extends:<,trail:\ 
set laststatus=2
set statusline=[%L]\ %t\ %y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%r%m%=%c:%l/%L

let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

" Opsplorer
let s:split_width = 32

helptags ~/.vim/doc

" for perl
set iskeyword+=:
map ,pt  <Esc>:%! perltidy<CR>
map ,ptv <Esc>:'<,'>! perltidy<CR>

filetype plugin on

" vimgrep + cwin
au QuickfixCmdPost vimgrep cwin

" for JavaScript
" map ,jt <Esc>:%! ~/.vim/bin/js_swell.pl<CR>

" $Id: .vimrc 21 2009-05-29 05:37:47Z hirayama $
