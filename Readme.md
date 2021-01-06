# Run the Latest version of a command using glob
your lag configfile lives in `~/.lag` and contains an assoziative array 
`lag`, eg.:

```shell script
lag[cura]=~/bin/Cura-*.AppImage
lag[idea]=~/bin/idea-UI-*/bin/idea.sh
```

running `lag` gives you an alias list according to your config eg.: 

```shell script
alias cura='/home/me/github/schorsch3000/Latest-And-Greatest/src/lag cura'
alias idea='/home/me/github/schorsch3000/Latest-And-Greatest/src/lag idea'
```

so you should add something like `eval "$(lag)"` to your .bashrc

running eg. cura after your sources the output of `lag` rund the latest version matching the glob from the configfile (using sort --version-sort) 
