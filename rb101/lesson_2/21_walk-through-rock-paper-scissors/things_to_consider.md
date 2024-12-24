# Things to Consider
### 1
The program would still work if the `display_results` method definition was moved above that of `prompt`. As far as I know, so long as the method definitions are on top of the main program code, Ruby reads and stores all of the method definitions before any of the main program code is executed.

### 2
Invoking `test_method` just after the `prompt` method definition worked, but invoking it just before the `prompt` method definition did not work.
`test_method` contains within it the invocation of `prompt`. In the first scenario, when `prompt` is invoked by the calling of `test_method`, Ruby has already read the method definition of `prompt` and is aware of it. However, in the second scenario, Ruby is not aware of `prompt` when `test_method` is calle, because the invocation of `test_method` comes before the definition of `prompt`.

### 3
If `display_results` returned a string instead, I'd need to initialize a variable to store the string that `display_results` returns, then output the variable.

### 4
I suppose I can move all (or some of it) the code and logic of `display_results` to a `.yml` file?
