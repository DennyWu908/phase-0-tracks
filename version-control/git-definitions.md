# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is a system that allows for the viewing of the entire history of revisions to one or more files. This is useful because it allows for previous versions of files to be used if that code is ever needed.

* What is a branch and why would you use one?

A branch is a copy of the contents of a Git repository, which includes the original copy (called the master branch). These can be used to prevent unwanted changes to the original files. However, the originals can be updated with intended changes by merging a new branch with the master branch.

* What is a commit? What makes a good commit message?

A commit is a command that creates a save point in Git, preventing changes to a Git repository from being lost. A good commit message will explain what types of changes have been committed.

* What is a merge conflict?

A merge conflict occurs when Git attempts to merge two or more branches with the master that include a specific file which has been changed in different ways. Git is unable to determine which change is intended, and will mark the file as having a conflict instead.