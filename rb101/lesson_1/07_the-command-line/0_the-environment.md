Introduction to the Command Line

# The Environment

## Environment Variables
The current directory provides context for commands that the user runs. Another way of providing context is through **environment variables**.

When you log in to the command line, a variety of environment variables are automatically set. They can be seen along with their values by running `env`.

### Setting a Variable in Shell
- Don't prepend the `$` when setting a variable, but prepend it when referencing
- No spaces between the variable and the `=`, as well as the `=` and the value
- It's best to use `""` around the value, but it's not necessary unless the value has special characters

## How to Change Your Command Line Environment
You can set or modify existing variables. This can be done on the fly (the changes only affect the current session) or can be done permanently (the changes will last between sessions).

### Setting Environment Variables on the Fly
There are two ways to set an environment variable on the fly. The lifetime of an environment variable set this way is only for the duration of the command. Once the command finishes, the environment variable will be reset to its previous value, or deleted outright if the variable did not previously exist.

1. Set the variable on its own line, and then use it anywhere:
```shell
% SOMETHING="some value"
% echo $SOMETHING
some value
```
2. Set the variable before a command, on the same line:
```shell
% ANOTHERTHING="another value" env
...
ANOTHERTHING=another value
...
```
(NOTE: Usually you cannot use a value on the same line where you set it. This is because variables are evaluated beore the setting occurs.)

### Making More Permanent Changes
When you start a command line session, one or more **environment files** are executed. These files can be used to modify or create environment variables. They are usually located in the home directory (`.bashrc` and `.bash_profile` for Bash; `.zshrc` and `.zprofile` for Zsh).

Environment files are only evaluated when you first log in. Use `source` to re-run one after changes to it have been made and to apply them in the current session.

## Using Environment Variables

### 1. As parts of commands
```shell
% MSG='Hello, world!'
% echo $MSG
Hello, world!
```
Variables can be used as commands too:
```shell
% MSG='Hello, world!'
% COMMAND='echo'
% $COMMAND $MSG
Hello, world!
```

### 2. Interpolated in strings
```shell
% MSG1="This is message 1."
% MSG2="This is message 2."
% MSG="$MSG1 $MSG2"
% echo MSG
This is message 1. This is message 2.
```
Interpolation and escape literals (`\n`, `\h`, etc.) will only function in strings delimited with `""`. `$` is treated as a special character that indicates a variable (and thus the value that it points to, which is to be interpolated) in double-quoted strings; whereas in single-quoted strings, `$` is treated as an oridinary character.

### 3. Behind the scenes
Environment variables can used by commands (programs) behind the scenes. In other words, a variable can be set and then passed to a command without being stated explicitly. For instance, `PWD` is automatically used by any command that tries to get the current directory; `HOME` is automatically used by `cd` when it is called without an explicit argumnet.

On the same line, set the variable immeidately before the command to change a variable temporarily.
```shell
% HOME=/ cd
% pwd
/
% cd
% pwd
/Users/hairanlin
```

## `$PATH` and Executables
```shell
% echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
```
`bin` is short for "binary". It is the standard directory name for executable files, or programs.

When a word is entered on the command line and if it doesn't begin with a `/`, `~`, or `.` (which would otherwise indicate that it is a path), the command line will search each of the directories listed in the `PATH` environment variable from left to right.

Use `which` to locate the executable/command.
```shell
% which ruby
/Users/hairanlin/.rbenv/shims/ruby
```

To create or intall an executable as if it is a built-in command, make sure it has the correct permissions and add the path to its directory to the `PATH` variable in `~/.bashrc` or `~/.zshrc`.
```
export PATH="/path/to/my/executables-directory:$PATH"
```
