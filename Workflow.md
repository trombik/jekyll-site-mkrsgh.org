## Workflow - how to work on the project

## Overview of the workflow

1. checkout the latest `devel` branch (Atom: [Fetch and
   pull](https://flight-manual.atom.io/using-atom/sections/github-package/#fetch-and-pull))
1. Create a new branch with name the branch something descriptive, something
   like `new_feature_X` (Atom:
   [Branch](https://flight-manual.atom.io/using-atom/sections/github-package/#branch))
1. Create a file, change files ...
1. When you finish your work, stage your changes (Atom:
   [Stage](https://flight-manual.atom.io/using-atom/sections/github-package/#stage))
1. Commit with commit message (Atom: [Commit
   Preview](https://flight-manual.atom.io/using-atom/sections/github-package/#commit-preview)
   and
   [Commit](https://flight-manual.atom.io/using-atom/sections/github-package/#commit))
1. Push the branch (Atom: [Publish and
   push](https://flight-manual.atom.io/using-atom/sections/github-package/#publish-and-push))
1. Create a pull request (Atom: [Create a Pull
   Request](https://flight-manual.atom.io/using-atom/sections/github-package/#create-a-pull-request))
1. When your PR is merged, you may delete your local branch `new_feature_X`

## Git basics

Although Atom editor has `git` support built-in, you should get used to `git`
command line tools.

Almost all git commands must be invoked in a repository directory. Always `cd`
("change directory") to the project repository directory.

Open `Teminal` application. Run:

```
$ cd ~/Documents/jekyll-site-mkrsgh.org
$
```

There should be no output.

### Creating your branch

When you start changing files, the first thing to do is always to creating a
new branch.

Create your branch by `git checkout`.

```
$ git checkout -b documentation devel
```

Meaning:

* Create new branch (`checkout -b`)
* The new branch name is `documentation`
* The initial state is a copy of branch `devel`

### See current status

To see the status of current working branch, run:

```
$ git status
```

An example output:

```
$ git status
On branch documentation
Untracked files:
  (use "git add <file>..." to include in what will be committed)
	Workflow.md
	filios-sazeides-uckPy5B7K4o-unsplash.jpg
	jordan-harrison-40XgDxBfYXM-unsplash.jpg
	katie-rodriguez-NP9kbCXeVK0-unsplash.jpg

nothing added to commit but untracked files present (use "git add" to track)
```

In this example, the command says:

* the current branch is `documentation`
* there are four "untracked" files, or files that are not committed in the
  repository
* no files are staged for commit
* untracked files can be staged for commit by `git add [file name]`
* no files has been modified

Always make sure which branch you are on before committing. To see which
branch you are on, run:

```
$ git branch
```

An example output:

```
$ git branch
  bugfix
  contact
  data
  devel
* documentation
  policies
  remove_imagemagick
```

It says:

* there are 7 branches
* the active branch is `documentation`

### Working on files

When you are in the new branch, add new files, modify contents, remove files,
or whatever you want. The initial state, a copy of `devel`, is kept as well as
all the history of the repository. Even when you accidentally removed a file,
you can restore the original.  All the changes, until you commit them, are
temporary changes.

When you want to see changes you have made so far, use `git diff`.

An example:

```
$ git diff
diff --git a/Workflow.md b/Workflow.md
index 0c1c01c..f464403 100644
--- a/Workflow.md
+++ b/Workflow.md
@@ -1,6 +1,6 @@
 ## Workflow - how to work on the project

-## Basics of the workflow
+## Overview of the workflow

 1. checkout the latest `devel` branch (Atom: [Fetch and
    pull](https://flight-manual.atom.io/using-atom/sections/github-package/#fetch-and-pull))
@@ -18,7 +18,7 @@
    push](https://flight-manual.atom.io/using-atom/sections/github-package/#publish-and-push))
 1. Create a pull request (Atom: [Create a Pull
    Request](https://flight-manual.atom.io/using-atom/sections/github-package/#create-a-pull-request))
-1. When your PR is merged, delete your local branch `new_feature_X`
+1. When your PR is merged, you may delete your local branch `new_feature_X`

 ## Git basics
```

The output is called `diff`, abbreviation of `difference`. Lines start with
`+` are your addition. Lines start with `-` are deletion.

Modify files until you finish.

### Staging your changes for commit

When you finish your work, commit your changes to your local repository. The
commit will be local, no one will see your changes until you `push` the
changes to remote repository.

To commit, you need to stage files first. Suppose, you create and write the
content in `Workflow.md`. See the status at the moment.

```
$ git status
On branch documentation
Untracked files:
  (use "git add <file>..." to include in what will be committed)
	Workflow.md
	filios-sazeides-uckPy5B7K4o-unsplash.jpg
	jordan-harrison-40XgDxBfYXM-unsplash.jpg
	katie-rodriguez-NP9kbCXeVK0-unsplash.jpg

nothing added to commit but untracked files present (use "git add" to track)
```

You want to commit `Workflow.md`. Stage the file.

```
$ git add Workflow.md
```

The command outputs nothing if no error. See the status again.

```
$ git status
On branch documentation
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	new file:   Workflow.md

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	filios-sazeides-uckPy5B7K4o-unsplash.jpg
	jordan-harrison-40XgDxBfYXM-unsplash.jpg
	katie-rodriguez-NP9kbCXeVK0-unsplash.jpg
```

It says:

* the branch is `documentation`
* a new file, `Workflow.md`, has been staged
* other untracked files are not staged

Before committing the change, make sure the changes you are staged is what you
expect. To see changes in staged files, use `git diff --staged`.

```
$ git diff --staged
diff --git a/Workflow.md b/Workflow.md
new file mode 100644
index 0000000..0c1c01c
--- /dev/null
+++ b/Workflow.md
@@ -0,0 +1,123 @@
+## Workflow - how to work on the project
+
+## Basics of the workflow
+
+1. checkout the latest `devel` branch (Atom: [Fetch and
+   pull](https://flight-manual.atom.io/using-atom/sections/github-package/#fetch-and-pull))

... more output ...
```

Note that lines starting with `+` indicates the addition. If you had removed,
or modified, lines, the removed lines would have been starting with `-`.

You are now ready to commit.

### Committing

To commit use `git commit`.

```
$ git commit
```

The command will launch the default editor. In the opened file, write _commit
message_ that explains changes you have made. Write one line short
description, ideally, less than 74 characters. The short description should
start with a verb with present tense.  After an empty line, add more messages
if any.

An example:

> fix wrong contact email address
>
> reported by Support department.

Remember that good commit messages include not only _what you did_ but also
_why you did_.

Examples of *BAD* commit messages:

> Add new file (why?)

> fixed (fixed what and why? what was the problem?)

Examples of *GOOD* commit messages:

> add new page that introduce new product XYZ
>
> asked by Sales Manager

> fix wrong prices in products list
>
> reported in issue number 123

When you finish writing the commit message, save and close the editor. When
you close the file, `git commit` commits the changes with the commit message.

The commit you have made is kept in _your local repository_. To share your
changes with others, you need to `push` your branch.

### Pushing, or publishing, the branch

There are two repositories, local and remote repository. So far, you are
working in your local repository. To share your new branch (and merge the
branch to branch `devel` so that your changes are published), you need to push
your local repository to the remote repository on `github.com`.

```
$ git status
```


## Branches

`devel` branch is the default branch. Whenever a change is made on this branch,
the result will be published to the stage site.

`devel` is protected. You cannot directly push your changes to `devel`. You
must create a pull request to merge your branch to `devel`. Do NOT commit any
changes to your local `devel` branch. Always create a new branch from `devel`
and work in the branch.


