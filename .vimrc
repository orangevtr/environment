" -------------------
" $B?'$N@_Dj(B
" -------------------
syntax on

highlight LineNr ctermfg=darkyellow    " $B9THV9f(B
highlight NonText ctermfg=darkgrey
highlight Folded ctermfg=blue
highlight SpecialKey cterm=underline ctermfg=darkgrey
"highlight SpecialKey ctermfg=grey " $BFC<l5-9f(B

" $BA43Q%9%Z!<%9$r;k3P2=(B
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /$B!!(B/

" $B%?%VI}(B
set ts=4 sw=4
set softtabstop=4
set expandtab

" -------------------
" $BF|K\8l$N@_Dj(B
" -------------------
" $BJ8;z%3!<%I$N<+F0G'<1(B

if &encoding !=# 'utf-8' 
  set encoding=japan
  set fileencoding=japan
endif

if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  " iconv$B$,(BeucJP-ms$B$KBP1~$7$F$$$k$+$r%A%'%C%/(B
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  " iconv$B$,(BJISX0213$B$KBP1~$7$F$$$k$+$r%A%'%C%/(B
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  " fileencodings$B$r9=C[(B
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

  " $BDj?t$r=hJ,(B
  unlet s:enc_euc
  unlet s:enc_jis
endif

" $BF|K\8l$r4^$^$J$$>l9g$O(B fileencoding $B$K(B encoding $B$r;H$&$h$&$K$9$k(B
if has('autocmd')
  function! AU_ReCheck_FENC()
    if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
      let &fileencoding=&encoding
    endif
  endfunction
  autocmd BufReadPost * call AU_ReCheck_FENC()
endif
" -------------------
" $B8!:w(B
" -------------------
" $B8!:wJ8;zNs$,>.J8;z$N>l9g$OBgJ8;z>.J8;z$r6hJL$J$/8!:w$9$k(B(noignorecase)
set ignorecase
" $B8!:wJ8;zNs$KBgJ8;z$,4^$^$l$F$$$k>l9g$O6hJL$7$F8!:w$9$k(B(nosmartcase)
set smartcase
" $B8!:wJ8;z$N%O%$%i%$%H$r$7$J$$(B
set nohlsearch
" $B%$%s%/%j%a%s%?%k%5!<%A(B
set incsearch

" -------------------
" Explore
" -------------------
let g:explHideFiles='^\.,\.gz$,\.exe$,\.zip$'  " $BHsI=<($N@_Dj(B(a$B$G%H%0%k(B)
let g:explDetailedHelp=0
let g:explWinSize=''
let g:explSplitBelow=1
let g:explUseSeparators=1     " $B%G%#%l%/%H%j$H%U%!%$%k$N4V$/$i$$$K%;%Q%l!<%?I=<((B

" -------------------
" $B%P%C%U%!4XO"(B
" -------------------
set hidden           " $B@Z$jBX$(;~$N(Bundo$B$N8z2L;}B3Ey(B

" -------------------
" $B$=$NB>(B
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
