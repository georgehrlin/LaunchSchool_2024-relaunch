**Remote repositories** are repos not on our local machine. A local Git repo can be made aware of a remote repo, and can push or pull commits to/from the remote repo.

## `git remote`
```
% git remote add origin https://github.com/GitHubUsername/Repo.git
```
`origin` is an **alias**. It is the name that you will use locally to interact with the remote repo.

## `git push`
```
% git push -u origin main
```
The `-u` flag sets the default **upstream** repo, which is the remote repo to be used by default for `push`, `pull`, and etc. In this case, we will be using the `main` branch in the `origin` repo.

## `git pull`
Sometimes your remote repo contains commits that your local repo does not have. In those situations, you will need to pull the commits to from the remote repo into your local repo.

```
% git fetch
```
Use `git fetch` first to download the commit data for each branch that the remote repo contains.

Then, use `git diff` to examine the changes.
```
% git diff main origin/main
```
This command tells Git to compare the `main` branch on the local repo to the `main` branch on the remote repo (`origin/main`). In other words, this compares the most recent commit in the local repo with the most recent commit of the remote repo.

However, normally the order of the repos in the command should be:
```
% git diff origin/main main
```
This is because we usually want to compare a modified local repo to the original code from the remote repo.

```
% git pull --ff-only
```
`--ff-only` is an option passed to the command, which tells Git exactly how to combine the remote changes with our local branch. In this case, Git uses a **fast-forward** merge to combine the changes—it moves the history of the local branch forwards to match the history fetched from the remote branch. `-only` speicifies that if Git cannot combine the changes with a fast-forward merge then it should abort the change.

## `git clone`
`git clone` is used to pull down all the contents of a remote repo. It makes an exact clone of an existing remote repo and copies it onto your local machine. The cloned local repo will include all the files, commit history, branches, and everything else associated to that repo.
```
% git clone <remote repo URL> <local directory name>
% git clone https://github.com/georgehrlin/LaunchSchool_RB110.git rb110
```
Specify a second parameter (`rb100` in the example above) to name the local repo. Without it, the local directory will be named the same as the remote repo.
By doing this, a remote is automatically added to the local repo's configuration, pointing to the remote repo URL, aliased as `origin`.