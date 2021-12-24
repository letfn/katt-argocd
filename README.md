curl -o ~/bin/hof -sSL https://github.com/hofstadter-io/hof/releases/download/v0.5.17/hof_0.5.17_Linux_x86_64
chmod 755 ~/bin/hof
hof mod vendor cue
cue repo
cue gen
