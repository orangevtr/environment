# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Perl Tips
alias pmver="perl -le '\$m = shift; eval qq(require \$m) or die qq(module \"\$m\" is not installed\\n); print \$m->VERSION'"
alias urienc="perl -MURI::Escape -le 'print lc(uri_escape shift)'"
alias imap4enc="perl -MUnicode::IMAPUtf7 -le 'print Unicode::IMAPUtf7->new->encode(shift)'"
alias imap4dec="perl -MUnicode::IMAPUtf7 -le 'print Unicode::IMAPUtf7->new->decode(shift)'"

# Environmental Variables
export EDITOR=/usr/bin/vim

# ssh-agent task.
SSH_AGENT_FILE=~/.ssh/.ssh-agent
[ -r $SSH_AGENT_FILE ] && . $SSH_AGENT_FILE > /dev/null
if [ -z "$SSH_AUTH_SOCK" ] || [ ! -S "$SSH_AUTH_SOCK" ]; then
    [ -d ~/.ssh ] || mkdir -m 700 ~/.ssh
    ssh-agent > $SSH_AGENT_FILE
    . $SSH_AGENT_FILE > /dev/null
fi

# ack
alias ackp='ack --pager="less -r"'

# $Id: .bashrc 23 2009-06-29 01:45:49Z hirayama $
