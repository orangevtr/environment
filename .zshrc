# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/hirayama/.zshrc'

# autoload -Uz compinit
# compinit
# End of lines added by compinstall

##########################################################################################
# Imported from the one of Seba's.

# http://www.dna.bio.keio.ac.jp/~yuji/zsh/zshrc.txt

#---- $B%W%m%s%W%H@_Dj(B ------#
# $B:8%W%m%s%W%H(B
PROMPT='%b%{[32m%}[%n@%m %1~]${WINDOW:+"[$WINDOW]"}%#%b '
# PROMPT='%B%{[34m%}[%n@%m %~]${WINDOW:+"[$WINDOW]"}%#%b '
# PROMPT='%b[%n@%m %~]${WINDOW:+"[$WINDOW]"}%#%b '

## <$B%(%9%1!<%W%7!<%1%s%9(B>
## prompt_bang $B$,M-8z$J>l9g!"(B!=$B8=:_$NMzNr%$%Y%s%HHV9f(B, !!='!' ($B%j%F%i%k(B)
# ${WINDOW:+"[$WINDOW]"} = screen $B<B9T;~$K%9%/%j!<%sHV9f$rI=<((B (prompt_subst $B$,I,MW(B)
# %B = underline
# %/ or %d = $B%G%#%l%/%H%j(B (0=$BA4$F(B, -1=$BA0J}$+$i$N?t(B)
# %~ = $B%G%#%l%/%H%j(B
# %h or %! = $B8=:_$NMzNr%$%Y%s%HHV9f(B
# %L = $B8=:_$N(B $SHLVL $B$NCM(B
# %M = $B%^%7%s$N%U%k%[%9%HL>(B
#  %m = $B%[%9%HL>$N:G=i$N(B `.' $B$^$G$NItJ,(B
# %S (%s) = $BFM=P%b!<%I$N3+;O(B ($B=*N;(B)
# %U (%u) = $B2<@~%b!<%I$N3+;O(B ($B=*N;(B)
# %B (%b) = $BB@;z%b!<%I$N3+;O(B ($B=*N;(B)
# %t or %@ = 12 $B;~4V@)(B, am/pm $B7A<0$G$N8=:_;~9o(B
# %n or $USERNAME = $B%f!<%6!<(B ($USERNAME $B$O4D6-JQ?t$J$N$G(B setopt prompt_subst $B$,I,MW(B)
# %N = $B%7%'%kL>(B
# %i = %N $B$K$h$C$FM?$($i$l$k%9%/%j%W%H(B, $B%=!<%9(B, $B%7%'%k4X?t$G(B, $B8=:_<B9T$5$l$F$$$k9T$NHV9f(B (debug$BMQ(B)
# %T = 24 $B;~4V@)$G$N8=:_;~9o(B
# %* = 24 $B;~4V@)$G$N8=:_;~9o(B, $BICIU$-(B
# %w = `$BMKF|(B-$BF|(B' $B$N7A<0$G$NF|IU(B
# %W = `$B7n(B/$BF|(B/$BG/(B' $B$N7A<0$G$NF|IU(B
# %D = `$BG/(B-$B7n(B-$BF|(B' $B$N7A<0$G$NF|IU(B
# %D{string} = strftime $B4X?t$rMQ$$$F@07A$5$l$?J8;zNs(B (man 3 strftime $B$G%U%)!<%^%C%H;XDj$,J,$+$k(B)
# %l = $B%f!<%6$,%m%0%$%s$7$F$$$kC<Kv$+$i(B, /dev/ $B%W%l%U%#%C%/%9$r<h$j=|$$$?$b$N(B
# %y = $B%f!<%6$,%m%0%$%s$7$F$$$kC<Kv$+$i(B, /dev/ $B%W%l%U%#%C%/%9$r<h$j=|$$$?$b$N(B (/dev/tty* $B$O%=%N%^%^(B)
# %? = $B%W%m%s%W%H$ND>A0$K<B9T$5$l$?%3%^%s%I$N%j%?!<%s%3!<%I(B
# %_ = $B%Q!<%5$N>uBV(B
# %E = $B9TKv$^$G%/%j%"(B
# %# = $BFC8"IU$-$G%7%'%k$,<B9T$5$l$F$$$k$J$i$P(B `#', $B$=$&$G$J$$$J$i$P(B `%' == %(!.#.%%)
# %v = psvar $BG[Ns%Q%i%a!<%?$N:G=i$NMWAG$NCM(B
# %{...%} = $B%j%F%i%k$N%(%9%1!<%W%7!<%1%s%9$H$7$FJ8;zNs$r%$%s%/%k!<%I(B
# %(x.true-text.false-text) = $B;0$DAH$N<0(B
# %<string<, %>string>, %[xstring] = $B%W%m%s%W%H$N;D$j$NItJ,$KBP$9$k(B, $B@Z$j5M$a$N?6$kIq$$(B
#         `<' $B$N7A<0$OJ8;zNs$N:8B&$r@Z$j5M$a(B, `>' $B$N7A<0$OJ8;zNs$N1&B&$r@Z$j5M$a$^$9(B
# %c, %., %C = $PWD $B$N8e$mB&$N9=@.MWAG(B

#PROMPT=ubst $B$,I,MW(B
# $B1&%W%m%s%W%H(B
#RPROMPT='%{%{

#---- $B$=$NB>FC<lJQ?t(B -------#
HISTFILE=$HOME/.zsh_history       # $B%R%9%H%jJ]B8%U%!%$%k(B
HISTSIZE=10000                    # $B%a%b%jFb$NMzNr$N?t(B
SAVEHIST=100000                   # $BJ]B8$5$l$kMzNr$N?t(B
LISTMAX=1000                      # $BJd40%j%9%H$r?R$M$k?t(B (1=$BL[$C$FI=<((B, 0=$B%&%#%s%I%&$+$i0n$l$k$H$-$O?R$M$k(B)

if [ $UID = 0 ]; then             # root $B$N%3%^%s%I$O%R%9%H%j$KDI2C$7$J$$(B
    unset HISTFILE
    SAVEHIST=0
fi

#---- $BJd40(B ---------------#
# cd $B$N8e$O%G%#%l%/%H%jL>$N$_$,%^%C%A$9$k(B
# su $B$N8e$O%f!<%6L>$N$_%^%C%A$9$k(B
# ssh $B$ND>8e$O%f!<%6L>(B or $B%[%9%HL>!"%f!<%6L>(B@$B$KB3$$$F$O%[%9%HL>$N$_$,%^%C%A(B($B8uJd%[%9%HL>$NEPO?$O$^$?8e!9(B)
# make $B$N8e$O(B Makefile $B$K5-=R$5$l$?%?!<%2%C%HL>(B(install $B$J$I(B)
# make --PREFIX= $B$J$I$N(B = $B$N8e$N%U%k%Q%9L>%^%C%A(B
# jobs, fg, bg $B$G$N%8%g%VL>%^%C%A(B
# kill $B$N8e$N%W%m%;%9(B ID $B%^%C%A(B
# scp $B$N%j%b!<%H%[%9%HB&$G!"Aj<j$N%U%!%$%k%Q%9$r%^%C%A$5$;$k(B
# $BBh(B1$BMWAG$,BgJ8;z$+$i;O$^$k>l9g$O4D6-JQ?t$K%^%C%A(B
# $BBeI=E*$J%3%^%s%I$G$O(B $B!V(B-$B!W(B $B$d(B $B!V(B--$B!W(B $B$N8e$K;HMQ2DG=$J%*%W%7%g%s$,%^%C%A(B
# $$B$N8e$O%7%'%kJQ?t!?4D6-JQ?t$,%^%C%A(B(compinit $B$7$J$/$F$b$G$-$^$9$,(B)
# - $BF0E*Jd40(B : w3m, gcc $BEy$K1~$8$?%U%!%$%k$N$_$,Jd40$5$l$k(B
autoload -U compinit
compinit -u
#compinit

# $BJd40$N;~$KBgJ8;z>.J8;z$r6hJL$7$J$$(B ($BC"$7!"BgJ8;z$rBG$C$?>l9g$O>.J8;z$KJQ49$7$J$$(B)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# $B0lIt$N%3%^%s%I%i%$%sDj5A$O!"E83+;~$K;~4V$N$+$+$k=hM}$r9T$&(B -- apt-get, dpkg (Debian), rpm (Redhat), urpmi (Mandrake), perl$B$N(B-M$B%*%W%7%g%s(B, bogofilter (zsh 4.2.1$B0J9_(B), fink, mac_apps (MacOS X)(zsh 4.2.2$B0J9_(B)
zstyle ':completion:*' use-cache true
# $BJd408uJd$r(B $B"+"-","*(B $B$GA*Br(B ($BJd408uJd$,?'J,$1I=<($5$l$k(B)
zstyle ':completion:*:default' menu select=1
# $BJd408uJd$r(B $B"+"-","*(B $B$GA*Br(B ($BJd408uJd$,?'J,$1I=<($5$l$k(B)
#zstyle ':completion:*:default' menu select true
# $B%*%W%7%g%sJd40$G2r@bItJ,$rI=<($7$J$$(B
#zstyle :completion:* verbose no
#
# $B%+%l%s%H%G%#%l%/%H%j$K8uJd$,$J$$>l9g$N$_(B cdpath $B>e$N%G%#%l%/%H%j$r8uJd(B
zstyle ':completion:*:cd:*' tag-order local-directories path-directories

# $BFCDj$N%3%^%s%I$NJd40$rL58z$K$9$k(B
#compdef -d w3m
# $B$"$k%3%^%s%I$NJd40$rB>$N%3%^%s%I$N$h$&$KJd40$9$k(B (platex $B$b(B latex $B$HF1$8(B)
compdef _tex platex

#---- zmv ---------------#
# autoload -U zmv
# # % zmv '(*).jpeg' '$1.jpg'
# # % zmv '(**/)foo(*).jpeg' '$1bar$2.jpg'
# # % zmv -n '(**/)foo(*).jpeg' '$1bar$2.jpg' # $B<B9T$;$:%Q%?!<%sI=<($N$_(B
# # % zmv '(*)' '${(L)1}; # $BBgJ8;z"*>.J8;z(B
# # % zmv -W '*.c.org' 'org/*.c' #$B!V(B(*)$B!W!V(B$1$B!W$r!V(B*$B!W$G:Q$^$;$i$l$k(B
# alias mmv='noglob zmv -W'  # $B0z?t$N%/%)!<%H$bLLE]$J$N$G(B
# # % mmv *.c.org org/*.c
# #zmv -C # $B0\F0$G$O$J$/%3%T!<(B(zcp $B$H$7$F;H$&J}K!$b$"$k$_$?$$$@$1$I(B)
# #zmv -L # $B0\F0$G$O$J$/%j%s%/(B(zln $B$H$7$F;H$&J}K!$b$"$k$_$?$$$@$1$I(B)

# $BMzNr$K$h$kM=B,F~NO(B (man zshcontrib)
#autoload -U predict-on
#zle -N predict-on
#zle -N predict-off
#bindkey '^xp' predict-on
#bindkey '^x^p' predict-off

# core$BM^@)(B
#unlimit
#limit core 0
#limit -s
limit   coredumpsize    0

# $B%U%!%$%k:n@.;~$N%Q!<%_%C%7%g%s(B
umask 022

# screen $B;~$K(B ssh, telnet $B$G%m%0%$%s$7$?%[%9%HL>$r(B window $BL>$K$9$k(B
#if [ "$TERM" = "screen" ]; then
#    function ssh() {
#        echo -n "^[k$1^[\\"
#        /usr/bin/ssh $1
#    }
#fi

#####################################################################
# key bindings
#####################################################################
# $BC<Kv@_Dj(B
stty    erase   '^H'        # Ctrl+H $B$K(B 1 $BJ8;z:o=|(B
stty    intr    '^C'        # Ctrl+C $B$K3d$j9~$_(B
stty    susp    '^Z'        # Ctrl+Z $B$K%5%9%Z%s%I(B

# zsh $B$N%-!<%P%$%s%I(B (EDITOR=vi $B$+$G$bH=CG(B)
bindkey -e    # emacs $BIw(B
#bindkey -v     # vi $BIw(B
#zle-line-init() { zle -K vicmd; } ; zle -N zle-line-init # $B=i4|>uBV$r%3%^%s%I%b!<%I(B

# $B%+!<%=%k0LCV$+$iA0J}:o=|(B
# override kill-whole-line
bindkey '^U' backward-kill-line

# $BMzNr8!:w(B = C-p,n $B$G8!:w!&Jd40(B
autoload -U history-search-end
#zle -N history-beginning-search-backward-end history-search-end
#zle -N history-beginning-search-forward-end history-search-end
#bindkey "^P" history-beginning-search-backward-end
#bindkey "^N" history-beginning-search-forward-end
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

# history incremental search
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

# $B%o%$%k%I%+!<%I$NE83+$r3NG'(B
#bindkey "^X" expand-word
# $B%X%k%W$NI=<((B
# bindkey "^B" run-help
bindkey "^Q" run-help # "^0"$B$K$9$k$H$J$<$+(BC-n,C-p$B$,8z$+$J$/$J$k!D(B

# run-help $B$,8F$P$l$?;~!"(Bzsh $B$NFbIt%3%^%s%I$N>l9g$O3:Ev$9$k(B zsh $B$N%^%K%e%"%kI=<((B
[ -n "`alias run-help`" ] && unalias run-help
autoload run-help

# ls /usr/local/etc $B$J$I$HBG$C$F$$$k:]$K!"(BC-w $B$GC18l$4$H$K:o=|(B
# default  : ls /usr/local $B"*(B ls /usr/ $B"*(B ls /usr $B"*(B ls /
# $B$3$N@_Dj(B : ls /usr/local $B"*(B ls /usr/ $B"*(B ls /
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

#####################################################################
# functions
#####################################################################
setopt prompt_subst          # $B%W%m%s%W%H$K(B escape sequence ($B4D6-JQ?t(B) $B$rDL$9(B
unsetopt promptcr            # $B2~9T$N$J$$=PNO$r%W%m%s%W%H$G>e=q$-$9$k$N$rKI$0(B
autoload -U colors           # $B%W%m%s%W%H$N%+%i!<I=<($rM-8z(B
colors                       # $B"*(B $B?';XDj(B  $fg[$B?'L>(B]/$bg[$B?'L>(B]/$reset_color (${, $} $B$G0O$`I,MW$,$"$k(B)
                             #            30$B9u(B 31$B@V(B 32$BNP(B 33$B2+(B 34$B@D(B 35$B;g(B 36$B?e(B 37$BGr(B

#setopt extended_history      # $BMzNr%U%!%$%k$K3+;O;~9o$H7P2a;~4V$r5-O?(B
unsetopt extended_history
setopt append_history        # $BMzNr$rDI2C(B ($BKh2s(B .zhistory $B$r:n$k$N$G$O$J$/(B)
setopt inc_append_history    # $BMzNr$r%$%s%/%j%a%s%?%k$KDI2C(B
setopt share_history         # $BMzNr$N6&M-(B
setopt hist_ignore_all_dups  # $B=EJ#$9$k%3%^%s%I9T$O8E$$J}$r:o=|(B
setopt hist_ignore_dups      # $BD>A0$HF1$8%3%^%s%I%i%$%s$O%R%9%H%j$KDI2C$7$J$$(B
setopt hist_ignore_space     # $B%9%Z!<%9$G;O$^$k%3%^%s%I9T$O%R%9%H%j%j%9%H$+$i:o=|(B
                             # ($B"*(B $B@hF,$K%9%Z!<%9$rF~$l$F$*$1$P!"%R%9%H%j$KJ]B8$5$l$J$$(B)
unsetopt hist_verify         # $B%R%9%H%j$r8F$S=P$7$F$+$i<B9T$9$k4V$K0lC6JT=82DG=$r;_$a$k(B
setopt hist_reduce_blanks    # $BM>J,$J6uGr$O5M$a$F5-O?(B
setopt hist_save_no_dups     # $B%R%9%H%j%U%!%$%k$K=q$-=P$9$H$-$K!"8E$$%3%^%s%I$HF1$8$b$N$OL5;k$9$k!#(B
setopt hist_no_store         # history$B%3%^%s%I$OMzNr$KEPO?$7$J$$(B

setopt hist_expand           # $BJd40;~$K%R%9%H%j$r<+F0E*$KE83+(B
setopt list_packed           # $B%3%s%Q%/%H$KJd40%j%9%H$rI=<((B
#setopt auto_remove_slash     # $BJd40$GKvHx$KJd$o$l$?(B / $B$r<+F0E*$K:o=|(B
unsetopt auto_remove_slash
setopt auto_param_slash      # $B%G%#%l%/%H%jL>$NJd40$GKvHx$N(B / $B$r<+F0E*$KIU2C$7!"<!$NJd40$KHw$($k(B
setopt mark_dirs             # $B%U%!%$%kL>$NE83+$G%G%#%l%/%H%j$K%^%C%A$7$?>l9g(B $BKvHx$K(B / $B$rIU2C(B
setopt list_types            # $BJd408uJd0lMw$G%U%!%$%k$N<oJL$r<1JL%^!<%/I=<((B ($BLuCm(B:ls -F $B$N5-9f(B)
unsetopt menu_complete       # $BJd40$N:]$K!"2DG=$J%j%9%H$rI=<($7$F%S!<%W$rLD$i$9$N$G$O$J$/!"(B
                             # $B:G=i$K%^%C%A$7$?$b$N$r$$$-$J$jA^F~!"$O$7$J$$(B
setopt auto_list             # ^I$B$GJd402DG=$J0lMw$rI=<($9$k(B($BJd408uJd$,J#?t$"$k;~$K!"0lMwI=<((B)
setopt auto_menu             # $BJd40%-!<O"BG$G=g$KJd408uJd$r<+F0$GJd40(B
setopt auto_param_keys       # $B%+%C%3$NBP1~$J$I$r<+F0E*$KJd40(B
setopt auto_resume           # $B%5%9%Z%s%ICf$N%W%m%;%9$HF1$8%3%^%s%IL>$r<B9T$7$?>l9g$O%j%8%e!<%`(B

#setopt auto_correct          # $BJd40;~$K%9%Z%k%A%'%C%/(B
#setopt correct               # $B%9%Z%k%_%9$rJd40(B
#setopt correct_all           # $B%3%^%s%I%i%$%sA4$F$N%9%Z%k%A%'%C%/$r$9$k(B
#setopt AUTOLOGOUT=n          # n$BJ,8e$K<+F0E*$K%m%0%"%&%H(B

setopt auto_cd               # $B%G%#%l%/%H%j$N$_$G0\F0(B
setopt no_beep               # $B%3%^%s%IF~NO%(%i!<$G(BBeep$B$rLD$i$5$J$$(B
#setopt beep
setopt brace_ccl             # $B%V%l!<%9E83+5!G=$rM-8z$K$9$k(B
setopt bsd_echo
setopt complete_in_word
setopt equals                # =COMMAND $B$r(B COMMAND $B$N%Q%9L>$KE83+(B
setopt extended_glob         # $B3HD%%0%m%V$rM-8z$K$9$k(B
unsetopt flow_control        # (shell editor $BFb$G(B) C-s, C-q $B$rL58z$K$9$k(B
setopt no_flow_control       # C-s/C-q $B$K$h$k%U%m!<@)8f$r;H$o$J$$(B
setopt hash_cmds             # $B3F%3%^%s%I$,<B9T$5$l$k$H$-$K%Q%9$r%O%C%7%e$KF~$l$k(B
setopt no_hup                # $B%m%0%"%&%H;~$K%P%C%/%0%i%&%s%I%8%g%V$r(Bkill$B$7$J$$(B
# setopt ignore_eof            # C-d$B$G%m%0%"%&%H$7$J$$(B
#setopt no_checkjobs          # $B%m%0%"%&%H;~$K%P%C%/%0%i%&%s%I%8%g%V$r3NG'$7$J$$(B

setopt long_list_jobs        # $BFbIt%3%^%s%I(B jobs $B$N=PNO$r%G%U%)%k%H$G(B jobs -L $B$K$9$k(B
setopt magic_equal_subst     # $B%3%^%s%I%i%$%s$N0z?t$G(B --PREFIX=/USR $B$J$I$N(B = $B0J9_$G$bJd40$G$-$k(B
setopt mail_warning
setopt multios               # $BJ#?t$N%j%@%$%l%/%H$d%Q%$%W$J$I!"I,MW$K1~$8$F(B TEE $B$d(B CAT $B$N5!G=$,;H$o$l$k(B
setopt numeric_glob_sort     # $B?t;z$r?tCM$H2r<a$7$F%=!<%H$9$k(B
setopt path_dirs             # $B%3%^%s%IL>$K(B / $B$,4^$^$l$F$$$k$H$-(B PATH $BCf$N%5%V%G%#%l%/%H%j$rC5$9(B
setopt print_eight_bit       # $BJd408uJd%j%9%H$NF|K\8l$rE,@5I=<((B
setopt short_loops           # FOR, REPEAT, SELECT, IF, FUNCTION $B$J$I$G4JN,J8K!$,;H$($k$h$&$K$J$k(B

setopt auto_name_dirs
#setopt sun_keyboard_hack     # SUN$B%-!<%\!<%I$G$NIQ=P(B typo ` $B$r%+%P!<$9$k(B
setopt always_last_prompt    # $B%+!<%=%k0LCV$OJ];}$7$?$^$^%U%!%$%kL>0lMw$r=g<!$=$N>l$GI=<((B
setopt cdable_vars sh_word_split

setopt auto_pushd            # $BIaDL$K(B cd $B$9$k$H$-$K$b%G%#%l%/%H%j%9%?%C%/$K$=$N%G%#%l%/%H%j$rF~$l$k(B
setopt pushd_ignore_dups     # $B%G%#%l%/%H%j%9%?%C%/$K=EJ#$9$kJ*$O8E$$J}$r:o=|(B
setopt pushd_to_home         # pushd $B0z?t%J%7(B == pushd $HOME
setopt pushd_silent          # pushd,popd$B$NEY$K%G%#%l%/%H%j%9%?%C%/$NCf?H$rI=<($7$J$$(B

#setopt rm_star_wait          # rm * $B$r<B9T$9$kA0$K3NG'(B
setopt rm_star_silent        # rm * $B$r<B9T$9$kA0$K3NG'$7$J$$(B
setopt notify                # $B%P%C%/%0%i%&%s%I%8%g%V$,=*N;$7$?$i(B($B%W%m%s%W%H$NI=<($rBT$?$:$K(B)$B$9$0$KCN$i$;$k(B

#setopt no_clobber            # $B%j%@%$%l%/%H$G>e=q$-$r6X;_(B
unsetopt no_clobber
setopt no_unset              # $BL$Dj5AJQ?t$N;HMQ6X;_(B
#setopt interactive_comments  # $B%3%^%s%IF~NOCf$N%3%a%s%H$rG'$a$k(B
#setopt chase_links           # $B%7%s%\%j%C%/%j%s%/$O%j%s%/@h$N%Q%9$KJQ49$7$F$+$i<B9T(B
#setopt print_exit_value      # $BLa$jCM$,(B 0 $B0J30$N>l9g=*N;%3!<%I$rI=<((B
#setopt single_line_zle       # $B%G%U%)%k%H$NJ#?t9T%3%^%s%I%i%$%sJT=8$G$O$J$/!"#19TJT=8%b!<%I$K$J$k(B
#setopt xtrace                # $B%3%^%s%I%i%$%s$,$I$N$h$&$KE83+$5$l<B9T$5$l$?$+$rI=<($9$k(B

# $B%+%l%s%H%G%#%l%/%H%jCf$K%5%V%G%#%l%/%H%j$,L5$$>l9g$K(B cd $B$,8!:w$9$k%G%#%l%/%H%j$N%j%9%H(B
# cdpath=($HOME)
# zsh$B4X?t$N%5!<%A%Q%9(B
#fpath=($fpath ~/.zfunc )

#####################################################################
# functions
#####################################################################
#-------------------------------------------------------
# cd && ls
#function cd() {builtin cd $@ && ls -aF --show-control-char --color=auto}
# function cd () {               # $B%U%!%$%k$rC5$7$F!"$=$N%U%!%$%k$N$"$k>l=j$K(Bcd
#     if [ $# = 0 ]; then        #    % locate something.c
#         builtin cd             #        /usr/local/.../something.c
#     elif [ -f $1 ]; then       #    % cd `!!`
#         builtin cd $1:h
#     else
#         builtin cd $*
#     fi
#     ls -aF --show-control-char --color=auto
# }

#-------------------------------------------------------
# history
function history-all { history -E 1 } # $BA4MzNr$N0lMw$r=PNO$9$k(B

#-------------------------------------------------------
# accept-line-with-url
# http://sugi.nemui.org/doc/zsh/#doc2_14
#      $B%W%m%s%W%H$K$=$N$^$^(B URL $B$rBG$A$3$s$G(B Enter $B$r2!$;$P!"(B
#      $B%V%i%&%6$GI=<($7$?$j!"%@%&%s%m!<%I$,2DG=!#(B
# $BJQ?t(B WWW_BROWSER, DOWNLOADER, browse_or_download_method
browse_or_download_method="auto" # ask, auto, dwonload, browse
fpath=(~/.zsh $fpath)            # zsh function $B%G%#%l%/%H%j$N@_Dj(B
if autoload +X -U _accept_line_with_url > /dev/null 2>&1; then
  zle -N accept-line-with-url _accept_line_with_url
  bindkey '^M' accept-line-with-url
  #bindkey '^J' accept-line-with-url
fi

# accept-line-with-url.simple
# http://hiki.ex-machina.jp/zsh/?StartCommandWidgetized
# start() {
#     set -- ${(z)BUFFER}
#     local handler
#     if ! is_executable $1; then
#         if [[ $1 == *:* ]]; then
#             handler=$scheme_handler[${1%%:*}]
#         else
#             handler=$suffix_handler[${1##*.}]
#         fi
#         if [[ -n "$handler" ]]; then
#             BUFFER=${handler/\$1/$1}
#             zle end-of-line
#             zle set-mark-command
#             zle beginning-of-line
#             zle forward-word
#             zle quote-region
#         fi
#     fi
#     zle accept-line
# }
# autoload start
# zle -N start start
# bindkey '^M' start
# #bindkey '^J' start

#-------------------------------------------------------
## $B%?!<%_%J%k$N%&%#%s%I%&!&%?%$%H%k$rF0E*$KJQ99(B.1
#  precmd() {   # zsh$B%7%'%k$N%W%m%s%W%H$,I=<($5$l$kA0$KKh2s<B9T(B
#      print -Pn "\e]0;[$HOST] %~\a"
#  }
#  preexec () { # $B%3%^%s%I$,<B9T$5$l$kD>A0$K<B9T(B
#      print -Pn "\e]0;[$1]: %~\a"
#  }

## $B%?!<%_%J%k$N%&%#%s%I%&!&%?%$%H%k$rF0E*$KJQ99(B.2
# hostname=`hostname -s`
# function _setcaption() { echo -ne  "\e]1;${hostname}\a\e]2;${hostname}$1\a" > /dev/tty }
# function chpwd() {  print -Pn "\e]2; [%m] : %~\a" }
# chpwd
# function _cmdcaption() { _setcaption " ($1)"; "$@"; chpwd }
# for cmd in telnet slogin ssh rlogin rsh su sudo
# do
#     alias $cmd="_cmdcaption $cmd"
# done

## $B%?!<%_%J%k$N%&%#%s%I%&!&%?%$%H%k$rF0E*$KJQ99(B.3 -- screen $BBP1~HG(B
precmd() {
    [[ -t 1 ]] || return
    case $TERM in
        *xterm*|rxvt|(dt|k|E)term)
            #print -Pn "\e]2;%n%%${ZSH_NAME}@%m:%~ [%l]\a"
            #print -Pn "\e]2;[%n@%m %~] [%l]\a"
            print -Pn "\e]2;[%n@%m %~]\a"      # %l $B"+(B pts/1 $BEy$NI=<($r:o=|(B
            ;;
        # screen)
        #      #print -Pn "\e]0;[%n@%m %~] [%l]\a"
        #      print -Pn "\e]0;[%n@%m %~]\a"
        #      ;;
    esac
}

#-------------------------------------------------------
# CPU $B;HMQN($N9b$$J}$+$i(B8$B$D(B
function pst() {
  psa | head -n 1
  psa | sort -r -n +2 | grep -v "ps -auxww" | grep -v grep | head -n 8
}
# $B%a%b%j@jM-N($N9b$$J}$+$i(B8$B$D(B
function psm() {
  psa | head -n 1
  psa | sort -r -n +3 | grep -v "ps -auxww" | grep -v grep | head -n 8
}
# $BA4%W%m%;%9$+$i0z?t$NJ8;zNs$r4^$`$b$N$r(B grep
function psg() {
  psa | head -n 1                                    # $B%i%Y%k$rI=<((B
  psa | grep $* | grep -v "ps -auxww" | grep -v grep # grep $B%W%m%;%9$r=|30(B
}

#-------------------------------------------------------
# $B0z?t$N%U%!%$%k$r(B euc-LF $B$d(B sjis-CR+LF $B$KJQ49(B
function euc() {
    for i in $@; do;
        nkf -e -Lu $i >! /tmp/euc.$$ # -Lu :$B2~9T$r(B LF $B$K$9$k(B
        mv -f /tmp/euc.$$ $i
    done;
}
function sjis() {
    for i in $@; do;
        nkf -s -Lw $i >! /tmp/euc.$$ # -Lu :$B2~9T$r(B CR+LF $B$K$9$k(B
        mv -f /tmp/euc.$$ $i
    done;
}

#-------------------------------------------------------
# $B0z?t$N8!:w%o!<%I$G(B google $B8!:w(B ($BF|K\8l2D(B)
function google() {
  local str opt
  if [ $# != 0 ]; then # $B0z?t$,B8:_$9$l$P(B
    for i in $*; do
      str="$str+$i"
    done
    str=`echo $str | sed 's/^\+//'` # $B@hF,$N!V(B+$B!W$r:o=|(B
    opt='search?num=50&hl=ja&ie=euc-jp&oe=euc-jp&lr=lang_ja'
    opt="${opt}&q=${str}"
  fi
  w3m http://www.google.co.jp/$opt # $B0z?t$,$J$1$l$P(B $opt $B$O6u(B
}
alias goo=google

#-------------------------------------------------------
# function rm() {
#   if [ -d ~/.trash ]; then
#     local DATE=`date "+%y%m%d-%H%M%S"`
#     mkdir ~/.trash/$DATE
#     for i in $@; do
#       # $BBP>]$,(B ~/.trash/ $B0J2<$J%U%!%$%k$J$i$P(B /bin/rm $B$r8F$S=P$7$?$$$J(B
#       if [ -e $i ]; then
#         mv $i ~/.trash/$DATE/
#       else
#         echo "$i : not found"
#       fi
#     done
#   else
#     /bin/rm $@
#   fi
# }

#####################################################################
# aliases
#####################################################################
# $B%4%_H"(B
#alias rm='trash'
#alias trash-look='ls -al ~/.trash-dir/ 2> /dev/null'
#alias trash-clean='\rm -rf ~/.trash-dir/* 2> /dev/null'

# common
# alias del='rm -rf'
# alias cp='cp -irf'
# alias mv='mv -i'
# alias ..='cd ..'
# alias pd="pushd"
# alias po="popd"
# alias eng='LANG=C LANGUAGE=C LC_ALL=C'
# alias zcompile='zcompile ~/.zshrc'
# alias sc='screen'

# $B$h$/4V0c$($k$b$N(B
# alias dc='cd'
# alias bc='cd'

#alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
# alias cl='clear'
#alias dircl='eval `dircolors ~/.dir_colors -b`'  ## for RedHat (FedoraCore)
# alias dircl='eval `dircolors -b ~/.dir_colors`'   ## for Debian
# alias q='exit';
# alias e='exit';
# alias quit='exit';

# alias kon='modprobe -q vga16fb; modprobe -q fbcon; jfbterm';
# alias jfbterm='LANG=ja_JP.eucJP /usr/bin/jfbterm'

# IEEE paper
# alias mydvips='dvips -Ppdf -G0 -tletter'
# alias myps2pdf='ps2pdf -dCompatibilityLevel=1.3 -dMaxSubsetPct=100 -dSubsetFonts=true -dEmbedAllFonts=true -sPAPERSIZE=letter'

# TeX -> eps
# alias pictex='dvips -Ppdf -E -D 600 -Z'

# application
# vi
#alias vi='vi -i NONE'
# alias vi='vim'
# alias v='vim'
# alias via='vi ~/.bashrc'
# alias seta='source ~/.bashrc'
# alias gq='gqview'
# alias howm='vim -c Howm'
# alias cha='vim -c Changelog'

# emacs
# alias wl='emacs -f wl'
# alias ehowm='emacs -f howm-menu'
# alias emacs='emacs -nw'
# alias em='emacs -nw'
# alias e='emacs -nw'

# a2ps ($BF|K\8lI=<($N$?$a(B)
# alias a2ps='a2ps --encoding=euc-jp'

# vnc server
# alias vncstart='vncserver -geometry 1024x768 :1'
# alias vnckill='vncserver -kill :1'

# midnight commander
# alias mc='mc -da'

# grep $B9T?t(B, $B:F5"E*(B, $B%U%!%$%kL>I=<((B, $B9T?tI=<((B, $B%P%$%J%j%U%!%$%k$O=hM}$7$J$$(B
# alias grep='grep -i -r -H -n -I'

# development
# alias py='python'
# alias gdb='gdb -silent'
# alias gpp='g++'

# namazu + w3m
#alias updatenmz='mknmz -a -O ~/.howm ~/Memo
# alias updatenmz='mknmz -O ~/.howm ~/Memo/'
# alias sr='srnmz'
# alias s='srnmz'

# $B:#Kx$NMzNr$r4JC1$KC)$k(B
alias gd='dirs -v; echo -n "select number: "; read newdir; cd +"$newdir"' # AUTO_PUSHD $B$,I,MW(B
# dirs -v  --  $B%G%#%l%/%H%j%9%?%C%/$rI=<((B

# $B%0%m!<%P%k%(%$%j%"%9(B
alias -g G='| grep '  # e.x. dmesg lG CPU
alias -g L='| $PAGER '
alias -g W='| wc'
alias -g H='| head'
alias -g T='| tail'

# colore-ls
# $B8D?M%+%i!<@_Dj$N%m!<%I(B
if [ -f ~/.dir_colors ]; then
   eval `dircolors -b ~/.dir_colors`
fi
# ls
alias la='ls -aF --show-control-char --color=always'
alias ls='ls --show-control-char --color=always'
alias ll='ls -l --show-control-char --color=always'
alias l.='ls -d .[a-zA-Z]* --color=always'
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} # $BJd408uJd$r?'J,$1(B (GNU ls $B$N?'Dj5A$rN.MQ(B)

alias rmbak='rm -f *~'
alias rmdotbak='rm -f .*~'
alias rmrbak='find . -name "*~" | xargs rm -fv'

# Perl Tips
alias pmver="perl -le '\$m = shift; eval qq(require \$m) or die qq(module \"\$m\" is not installed\\n); print \$m->VERSION'"
alias urienc="perl -MURI::Escape -le 'print lc(uri_escape shift)'"
alias imap4enc="perl -MUnicode::IMAPUtf7 -le 'print Unicode::IMAPUtf7->new->encode(shift)'"
alias imap4dec="perl -MUnicode::IMAPUtf7 -le 'print Unicode::IMAPUtf7->new->decode(shift)'"

# Environmental Variables
export EDITOR=/usr/bin/vim

# ssh-agent task.
SSH_AGENT_FILE=~/.ssh/.ssh-agent
SSH_AUTH_SOCK=
[ -r $SSH_AGENT_FILE ] && . $SSH_AGENT_FILE > /dev/null
if [ -z "$SSH_AUTH_SOCK" ] || [ ! -S "$SSH_AUTH_SOCK" ]; then
    [ -d ~/.ssh ] || mkdir -m 700 ~/.ssh
    ssh-agent > $SSH_AGENT_FILE
    . $SSH_AGENT_FILE > /dev/null
fi

# ack
alias ackp='ack --pager="less -r"'

# pmvim
function pmvim {
    vim `perldoc -l $*`
}

# $Id: .zshrc 24 2010-03-01 06:50:46Z hirayama $
