if not status is-interactive
   return
end

set GOPATH $HOME/.go
set GEM_HOME $HOME/.gem		# Ruby gem path
set npm_config_prefix $HOME/.local
set VISUAL "emacsclient -c"	# Default text editor
set fish_greeting		# Remove the greeting
set EDITOR "nvim"		# Default text editor for CLI programs

# set PATH $HOME/.local/share/gem/ruby/3.0.0/bin $HOME/Scripts $HOME/.local/bin $HOME/node_modules/.bin/ $GOPATH $PATH
set PATH $HOME/.local/bin $HOME/Codes/Scripts/ $PATH

# OCaml
source /home/adam/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# Abbreviations
abbr -a -- - 'cd -'
abbr -a -- ... ../..
abbr -a -- .... ../../..
abbr -a -- ..... ../../../..
abbr -a -- ...... ../../../../..
abbr -a -- 1 'cd -'
abbr -a -- 2 'cd -2'
abbr -a -- 3 'cd -3'
abbr -a -- 4 'cd -4'
abbr -a -- 5 'cd -5'
abbr -a -- 6 'cd -6'
abbr -a -- 7 'cd -7'
abbr -a -- 8 'cd -8'
abbr -a -- 9 'cd -9'
abbr -a -- d 'prevd -l'		# List directory history
abbr -a -- _ 'sudo '
# abbr -a -- afind 'ack -il'
abbr -a -- dcs docker-compose
# abbr -a -- jekyll 'bundle exec jekyll'
abbr -a -g -- py python
abbr -a -g -- py3 python3
abbr -a -g -- py2 python2
abbr -a -g -- workon "source ~/.pyvenv/bin/activate.fish"
abbr -a -g -- shrink "gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf"
abbr -a -g -- cups-start "systemctl start org.cups.cupsd"
abbr -a -g -- cups "firefox http://localhost:631"
abbr -a -g -- untar "tar xvfz"	# https://xkcd.com/1168/
# abbr -a -- egrep 'egrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
# abbr -a -- fgrep 'fgrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
# abbr -a -- g git
# abbr -a -- ga 'git add'
# abbr -a -- gaa 'git add --all'
# abbr -a -- gap 'git apply'
# abbr -a -- gapa 'git add --patch'
# abbr -a -- gau 'git add --update'
# abbr -a -- gav 'git add --verbose'
# abbr -a -- gb 'git branch'
# abbr -a -- gbD 'git branch -D'
# abbr -a -- gba 'git branch -a'
# abbr -a -- gbd 'git branch -d'
# abbr -a -- gbda 'git branch --no-color --merged | command grep -vE "^(\+|\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d'
# abbr -a -- gbl 'git blame -b -w'
# abbr -a -- gbnm 'git branch --no-merged'
# abbr -a -- gbr 'git branch --remote'
# abbr -a -- gbs 'git bisect'
# abbr -a -- gbsb 'git bisect bad'
# abbr -a -- gbsg 'git bisect good'
# abbr -a -- gbsr 'git bisect reset'
# abbr -a -- gbss 'git bisect start'
# abbr -a -- gc 'git commit -v'
# abbr -a -- 'gc!' 'git commit -v --amend'
# abbr -a -- gca 'git commit -v -a'
# abbr -a -- 'gca!' 'git commit -v -a --amend'
# abbr -a -- gcam 'git commit -a -m'
# abbr -a -- 'gcan!' 'git commit -v -a --no-edit --amend'
# abbr -a -- 'gcans!' 'git commit -v -a -s --no-edit --amend'
# abbr -a -- gcb 'git checkout -b'
# abbr -a -- gcd 'git checkout develop'
# abbr -a -- gcf 'git config --list'
# abbr -a -- gcl 'git clone --recurse-submodules'
# abbr -a -- gclean 'git clean -id'
# abbr -a -- gcm 'git checkout master'
# abbr -a -- gcmsg 'git commit -m'
# abbr -a -- 'gcn!' 'git commit -v --no-edit --amend'
# abbr -a -- gco 'git checkout'
# abbr -a -- gcount 'git shortlog -sn'
# abbr -a -- gcp 'git cherry-pick'
# abbr -a -- gcpa 'git cherry-pick --abort'
# abbr -a -- gcpc 'git cherry-pick --continue'
# abbr -a -- gcs 'git commit -S'
# abbr -a -- gcsm 'git commit -s -m'
# abbr -a -- gd 'git diff'
# abbr -a -- gdca 'git diff --cached'
# abbr -a -- gdct 'git describe --tags $(git rev-list --tags --max-count=1)'
# abbr -a -- gdcw 'git diff --cached --word-diff'
# abbr -a -- gds 'git diff --staged'
# abbr -a -- gdt 'git diff-tree --no-commit-id --name-only -r'
# abbr -a -- gdw 'git diff --word-diff'
# abbr -a -- gf 'git fetch'
# abbr -a -- gfa 'git fetch --all --prune'
# abbr -a -- gfg 'git ls-files | grep'
# abbr -a -- gfo 'git fetch origin'
# abbr -a -- gg 'git gui citool'
# abbr -a -- gga 'git gui citool --amend'
# abbr -a -- ggpull 'git pull origin "$(git_current_branch)"'
# abbr -a -- ggpur ggu
# abbr -a -- ggpush 'git push origin "$(git_current_branch)"'
# abbr -a -- ggsup 'git branch --set-upstream-to=origin/$(git_current_branch)'
# abbr -a -- ghh 'git help'
# abbr -a -- gignore 'git update-index --assume-unchanged'
# abbr -a -- gignored 'git ls-files -v | grep "^[[:lower:]]"'
# abbr -a -- git-svn-dcommit-push 'git svn dcommit && git push github master:svntrunk'
# abbr -a -- gk '\gitk --all --branches'
# abbr -a -- gke '\gitk --all $(git log -g --pretty=%h)'
# abbr -a -- gl 'git pull'
# abbr -a -- glg 'git log --stat'
# abbr -a -- glgg 'git log --graph'
# abbr -a -- glgga 'git log --graph --decorate --all'
# abbr -a -- glgm 'git log --graph --max-count=10'
# abbr -a -- glgp 'git log --stat -p'
# abbr -a -- glo 'git log --oneline --decorate'
# abbr -a -- globurl 'noglob urlglobber '
# abbr -a -- glod 'git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'
# abbr -a -- glods 'git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'\'' --date=short'
# abbr -a -- glog 'git log --oneline --decorate --graph'
# abbr -a -- gloga 'git log --oneline --decorate --graph --all'
# abbr -a -- glol 'git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'
# abbr -a -- glola 'git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --all'
# abbr -a -- glols 'git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --stat'
# abbr -a -- glp _git_log_prettily
# abbr -a -- glum 'git pull upstream master'
# abbr -a -- gm 'git merge'
# abbr -a -- gma 'git merge --abort'
# abbr -a -- gmom 'git merge origin/master'
# abbr -a -- gmt 'git mergetool --no-prompt'
# abbr -a -- gmtvim 'git mergetool --no-prompt --tool=vimdiff'
# abbr -a -- gmum 'git merge upstream/master'
# abbr -a -- gp 'git push'
# abbr -a -- gpd 'git push --dry-run'
# abbr -a -- gpf 'git push --force-with-lease'
# abbr -a -- 'gpf!' 'git push --force'
# abbr -a -- gpoat 'git push origin --all && git push origin --tags'
# abbr -a -- gpristine 'git reset --hard && git clean -dffx'
# abbr -a -- gpsup 'git push --set-upstream origin $(git_current_branch)'
# abbr -a -- gpu 'git push upstream'
# abbr -a -- gpv 'git push -v'
# abbr -a -- gr 'git remote'
# abbr -a -- gra 'git remote add'
# abbr -a -- grb 'git rebase'
# abbr -a -- grba 'git rebase --abort'
# abbr -a -- grbc 'git rebase --continue'
# abbr -a -- grbd 'git rebase develop'
# abbr -a -- grbi 'git rebase -i'
# abbr -a -- grbm 'git rebase master'
# abbr -a -- grbs 'git rebase --skip'
# abbr -a -- grep 'grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
# abbr -a -- grev 'git revert'
# abbr -a -- grh 'git reset'
# abbr -a -- grhh 'git reset --hard'
# abbr -a -- grm 'git rm'
# abbr -a -- grmc 'git rm --cached'
# abbr -a -- grmv 'git remote rename'
# abbr -a -- groh 'git reset origin/$(git_current_branch) --hard'
# abbr -a -- grrm 'git remote remove'
# abbr -a -- grs 'git restore'
# abbr -a -- grset 'git remote set-url'
# abbr -a -- grss 'git restore --source'
# abbr -a -- grt 'cd "$(git rev-parse --show-toplevel || echo .)"'
# abbr -a -- gru 'git reset --'
# abbr -a -- grup 'git remote update'
# abbr -a -- grv 'git remote -v'
# abbr -a -- gsb 'git status -sb'
# abbr -a -- gsd 'git svn dcommit'
# abbr -a -- gsh 'git show'
# abbr -a -- gsi 'git submodule init'
# abbr -a -- gsps 'git show --pretty=short --show-signature'
# abbr -a -- gsr 'git svn rebase'
# abbr -a -- gss 'git status -s'
# abbr -a -- gst 'git status'
# abbr -a -- gsta 'git stash push'
# abbr -a -- gstaa 'git stash apply'
# abbr -a -- gstall 'git stash --all'
# abbr -a -- gstc 'git stash clear'
# abbr -a -- gstd 'git stash drop'
# abbr -a -- gstl 'git stash list'
# abbr -a -- gstp 'git stash pop'
# abbr -a -- gsts 'git stash show --text'
# abbr -a -- gstu 'git stash --include-untracked'
# abbr -a -- gsu 'git submodule update'
# abbr -a -- gsw 'git switch'
# abbr -a -- gswc 'git switch -c'
# abbr -a -- gtl 'gtl(){ git tag --sort=-v:refname -n -l "${1}*" }; noglob gtl'
# abbr -a -- gts 'git tag -s'
# abbr -a -- gtv 'git tag | sort -V'
# abbr -a -- gunignore 'git update-index --no-assume-unchanged'
# abbr -a -- gunwip 'git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
# abbr -a -- gup 'git pull --rebase'
# abbr -a -- gupa 'git pull --rebase --autostash'
# abbr -a -- gupav 'git pull --rebase --autostash -v'
# abbr -a -- gupv 'git pull --rebase -v'
# abbr -a -- gwch 'git whatchanged -p --abbrev-commit --pretty=medium'
# abbr -a -- gwip 'git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"'
# abbr -a -- ll 'ls -lh'
# abbr -a -- ls 'ls --color=tty'
# abbr -a -- lsa 'ls -lah'
abbr -a -- x 'exit'
# abbr -a -- md 'mkdir -p'
abbr -a -- mv 'mv -i'		# Prompt before overwriting
abbr -a -- cp 'cp -i'		# Prompt before overwriting
abbr -a -- rename 'rename -i'	# Prompt before overwriting
abbr -a -- sed 'sed -i'		# Prompt before overwriting
abbr -a -- rm 'trash'
# abbr -a -- rm 'rm -I'		# Prompt before many removals
abbr -a -- rd rmdir
abbr -a -- re 'source'
abbr -a -- rsync 'rsync -avP'	# Archive mode, verbose, partial mode (continue stopped sync)
abbr -a -- l 'bat'
abbr -a -- 'vnc-spectate' 'x0vncserver -rfbauth ~/.vnc/passwd -AcceptKeyEvents=off -AcceptPointerEvents=off -AcceptCutText=off -AcceptSetDesktopSize=off'
abbr -a -- 'vnc-control' 'x0vncserver -rfbauth ~/.vnc/passwd'
abbr -a -- emacsd 'emacs --daemon'
abbr -a -- whatsmyip 'curl ifconfig.me'
abbr -a -- py 'python'
abbr -a -- unsshfs 'fusermount3 -u'
abbr -a -- handbrake 'ghb'
abbr -a -- torrent 'deluge'
abbr -a -- screenshot "grim -g (slurp) screenshot.png"
abbr -a -- monitor-lab "swaymsg output HDMI-A-1 scale 1.5 pos 0 0"
abbr -a -- monitor-home "swaymsg output HDMI-A-1 scale 1.0 pos 0 0"
abbr -a -- fightcade "/opt/fightcade2/start.sh"
abbr -a -- xclip "xclip -selection clipboard"
# abbr -a -- run-help man
# abbr -a -- which-command whence
# abbr -a -- xmodmap-revert 'xmodmap ~/Git/dot-files/.Xmodmap-revert'
abbr -a -- hhkb-layout "dconf write /org/gnome/desktop/input-sources/xkb-options \"['terminate:ctrl_alt_bksp', 'lv3:ralt_switch']\""
abbr -a -- zbkb-layout "dconf write /org/gnome/desktop/input-sources/xkb-options \"['ctrl:swapcaps', 'ctrl:nocaps', 'terminate:ctrl_alt_bksp', 'lv3:ralt_switch']\""
# Switch between high and low DPI
abbr -a -- hidpi "test (dconf read /org/gnome/desktop/interface/text-scaling-factor) -gt 1.1 && set NEWDPI 1.0 || set NEWDPI 1.4 ; dconf write /org/gnome/desktop/interface/text-scaling-factor \$NEWDPI && echo \"Emacs must be restarted for the changes to take place.\""
# && emacsclient -e \"(hidpi)\""
abbr -a -- teams "brave teams.live.com"
abbr -a -- ytaudio "download-yt-audio"
abbr -a -- ytvideo "download-yt-video"
abbr -a -- ytdj "download-yt-audio -m"
abbr -a -- ytpod "download-yt-to-podcast"
abbr -a -- v "nvim"
abbr -a -- xwld "env XDG_SESSION_TYPE=x11 GDK_BACKEND=x11"
abbr -a -- resilio "env NIXPKGS_ALLOW_UNFREE=1 nix-shell -p resilio-sync --command \"rslsync --nodaemon\""
starship init fish | source
