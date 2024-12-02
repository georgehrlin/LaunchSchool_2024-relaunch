# Branching

## What is Branching?
In Git, a **branch** is a copy of all the files in your codebase. Each branch has an identifying name and its own set of version or commit history. When you create a new repository, the default branch is called `main` (or `master` in older repos). Even if you do not create any additional branches, you will be performing all Git commands on a branch called `main`.

To create a branch (for experimentation), we **fork** it from another existing branch, likely `main`. Then we switch to the newly forked branch and start working inside the new branch. The new branch contains all the historical changes in the `main` branch up to the point of the fork.

If we decide to discard the experiment, we can simply switch back to the `main` branch and delete the experimental branch. On the other hand, if we decide the experiment is a success, then we can **merge** commits from the experimental branch into our `main` branch. After merging the commits, we can delete the experimental branch if we want to.

Branches can exist both locally and on remote repos. You can set up your local branches to `track` remote branches, which means the local branches will automatically push and pull code from the tracked branch on the remote repo.