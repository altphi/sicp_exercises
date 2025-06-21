# sicp_exercises

## prereqs (for mac)
`brew install mit-scheme rlwrap`

## tips for mit-scheme
For a repl: `rlwrap mit-scheme`  
To execute a scheme file: `rlwrap mit-scheme --load hello.scm`  
Or start a repl and then `(load "filename.scm")`  

## in this repo's etc dir 
`completion.txt` contains space separated words you may wish to autocomplete in the repl  
`scheme.init` contains useful utils
  1. place or symlink at `$HOME/.scheme.init`
  2. edit to fix path to `utils.scm`
`utils.scm` autoloaded by `.scheme.init`

## shell alias and function for executing scheme, add to your rc file
`s` is to execute and exit  
`sr` is to execute and load repl  
  
```shell
alias sr='rlwrap -r -c -f ~/repo_path/etc/completion.txt mit-scheme --load '
s () {
  rlwrap -r -c -f ~/repo_path/etc/completion.txt mit-scheme --quiet --load ~/.scheme.init $@ --eval '(exit)'
}
```
