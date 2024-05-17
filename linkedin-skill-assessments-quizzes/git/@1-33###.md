##   @1-33###


#### Q8. What does the following command do to the git repository?

`git reset --soft HEAD^`

- [ ] It deletes all previous commits and reset the repository history back to its initial state.
- [ ] It resets the working branch to the first commit.
- [ ] It keeps the HEAD at the current commit, but clears all previous commits.
- [x] It sets HEAD to the previous commit and leaves changes from the undone commit in the stage/index.

#### Q9. You find a bug in your project, but can't locate where it was introduced in the commit history. How would you diagnose this problem?

- [ ] Manually backtrack through your commit history.
- [ ] Use git search -diff to compare all commits in your repository history.
- [ ] Run a git rebase to find the buggy commit.
- [x] Use git bisect to compare the buggy commit to an early commit that works as expected.

#### Q10. Why would the following command be used?

`git rebase -i HEAD~10`

- [ ] To run a comparative search of the last 10 commits for differences
- [x] To list the last 10 commits and modify them with either the squash or fixup command
- [ ] To delete the last 10 commits and reset the HEAD
- [ ] In order to locally cache the last 10 commits

#### Q11. Why would you use a pre-receive hook in your remote repository?

- [ ] You wouldn't, you would use it in the local repository
- [x] To execute a script when a remote receives a push that is triggered before any refs are updated
- [ ] To fire a script after updates are made to the remote repository
- [ ] To debug all commit tags and release versions

#### Q12. What option can you use to apply git configurations across your entire git environment? ok

- [ ] `--all`
- [ ] `--master`
- [x] `--global`
- [ ] `--update`

#### Q13. How could you squash multiple commits together without using git merge --squash?

- [ ] Caching
- [ ] You can't. git merge --squash is the only git command for that operation.
- [x] Rebasing
- [ ] Reflogging

#### Q14. If you cloned an existing git repository, what would happen? ok

- [ ] A new copy would overwrite the central repository
- [x] A copy of the repository would be created on your local machine
- [ ] Nothing, cloning is not a supported git function
- [ ] A copy of the repository would be created on the hosting platform

#### Q15. How can you display a list of files added or modified in a specific commit? ok

- [ ] Find the commit in the remote repository, as that's the only place that kind of information is stored.
- [x] Use the `diff-tree` command with the commit hash.
- [ ] Run `git commit --info` with the commit hash.
- [ ] Access the commit stash data with `git stash`.

#### Q16. What files is this .gitignore programmed to leave out?

```shell
`#.swift
`build/
`*.txt
`*.metadata
```

- [ ] All files with a .swift, .txt, or metadata file extension, as well as the entire build directory
- [ ] Only the build directory
- [x] All files in the build directory, as well as files ending with .txt or .metadata
- [ ] Only files with .swift and .txt extensions.



#### Q17. After you make changes to a local repository, you run the following command. What will this do?

`git commit -a -m "Refactor code base"`

- [ ] Nothing, you can't use multiple options in the same command
- [ ] Adds all new files to the staging area
- [ ] Commits all new files with a message
- [x] Adds all modified files to the staging area, then commits them with a message

#### Q18. After checking your git status you get the following output, which shows the file beta-notes.js in the commit but also unstaged. How can this situation occur?

```shell
`Change to be committed:
`(use "git reset HEAD <file>..." to unstage)
`modified: beta-notes.js
`Changes not staged for commit:
`(use "git add <file>..." to update what will be committed)
`(use "git checkout --<file>..." to discard changes in working directory)
`modified: beta-notes.js
```

- [ ] There were two copies of beta-notes.js but one was deleted
- [x] beta-notes.js was staged, then modified afterwards, creating two different versions of the file
- [ ] Two copies of beta-notes.js were created, but only one is being tracked
- [ ] There are two tracked copies of beta-notes.js, but one was removed from the commit

#### Q19. Where are files stored before they are committed to the local repository?

- [ ] Saved files
- [ ] git documents
- [x] Staging area
- [ ] git cache

#### Q20. What commands would you use to force an overwrite of your local files with the master branch?

- [ ] ⠀
```bash
`  git pull --all
`  git reset --hard origin/master
````
- [ ] ⠀
```bash
`  git pull -u origin master
`git reset --hard master
`  ```
- [ ] ⠀
```bash
`  git pull origin master
`  git reset --hard origin/myCurrentBranch
`  ```
- [x] ⠀

`  ```bash
`  git fetch --all
`  git reset --hard origin/master
```

#### Q81. What information does the git config file store?

- [ ] shell scripts and flags
- [ ] keychain and account information
- [x] local and global repository options
- [ ] pre-compile scripts and settings

#### Q82. What is version control?

- [ ] a type of architecture used to manage large databases
- [x] a system that shows, tracks, and controls changes to a set of files over time
- [ ] a programmatic design pattern used to manage code between multiple engineering teams
- [ ] a type of software that links a project with a GitHub repository

#### Q83. What is the difference between using the git stash and git stash pop commands?

- [ ] git stash removes a commit from the repo history, while git stash pop saves changes to multiple branches.
- [ ] git stash saves changes to multiple branches, while git stash pop removes a commit from the repo history.
- [ ] git stash removes the most recent commit, while git stash pop saves current changes.
- [x] git stash creates a stash entry, while git stash pop places the saved state onto the working directory.

#### Q84. Which command can be used to list the branches that have been merged into the currently checked-out branch?

- [ ] git master --status
- [ ] git branch --status
- [x] git branch --merged
- [ ] git status --merged

#### Q85. How would you configure Git to abort a commit if a smoke test script fails?

- [ ] Create a post-commit shell script that triggers the action.
- [ ] Create a post-commit hook to trigger the script.
- [x] Create a pre-commit hook to trigger the script.
- [ ] Create a pre-commit shell script that triggers the action.

#### Q86. Which use case is NOT a good candidate for a Git hook?

- [x] state dependent environment changes
- [ ] continuous integration
- [ ] increasing code coverage
- [ ] enforcing commit rules

#### Q87. After starting to work on a new feature and creating new files in the working directory related to it, the customer determined the feature was no longer required. What command can be used to remove the untracked files from the working directory ?

- [x] `git clean -f`
- [ ] `git rm .`
- [ ] `git reset HEAD`
- [ ] `git checkout .`

#### Q88. What information do Git reflogs (reference logs) store?

- [ ] shell script pointers and keychain credentials
- [x] updates to branch tips and other references in the local repository
- [ ] release notes and hook script values
- [ ] tag and versioning information

#### Q89. You have just completed rebasing your master branch and need to manually update the remote master, even though there is a merge conflict. How can you accomplish this?

- [ ] `git push --overwrite`
- [ ] `git push --update`
- [ ] `git push --assert`
- [x] `git push --force-with-lease`

#### Q90. What is the difference between `git fetch` amd `git pull`

- [ ] `git fetch` creates a new branch off the master branch, while `git pull` creates a new branch off the local repository's master branch.
- [ ] `git pull` downloads new data from a remote repository without integrating it into local files, while `git fetch` updates the current HEAD branch with the latest changes from the remote server.
- [x] `git fetch` updates remote tracking branches with changes from a remote repository, while `git pull` updates remote tracking branches with changes from a remote repository and merges them into their corresponding local branches.
- [ ] `git fetch` downloads and merges data from the local repository, while `git pull` informs your colleagues you are about to make changes to the master branch.

#### Q91. What command displays the difference between the working tree and the stage/index area, as well as files not tracked by Git?

- [ ] `git current`
- [x] `git status`
- [ ] `git local`
- [ ] `git context`

#### Q92. Your current repository has three branches: master, beta, and push-notifications. You have just finished the notification feature and commit the changes to the push-notification branch, and you want to include them in the beta branch. How can you accomplish this?

- [x] Check out the beta branch and run git merge push-notifications.
- [ ] Check out the push-notifications branch and run git merge beta.
- [ ] Check out the master branch and run git merge beta -> push-notifications.
- [ ] Delete the push-notifications branch; it will be committed to the master branch automatically.

#### Q93. You would like to restore some previously stashed work to a new branch. How can you do that?

- [ ] Use git branch <stash hash>.
- [ ] Add the stashed commits to the current commit, then create a new branch.
- [ ] Use git checkout -b.
- [x] Run git stash branch <branch name>.

#### Q94. What is the difference between git branch -d and git branch -D?

- [ ] -D deletes the local branch, while -d deletes the branch regardless of push and merge status.
- [ ] -d deletes the current commit head, while -D deletes the entire branch.
- [x] -d deletes the local branch, while -D deletes the local branch regardless of push and merge status.
- [ ] -D deletes the current commit head, while -d deletes the entire branch.

#### Q95. You stashed three sets of changes but cannot remember the contents of the first stash entry. What command would you use to see the details of the changes in the first of the three stash entries?

- [x] git stash show -p stash@{2}
- [ ] git stash list
- [ ] git stash show -p stash@{1}
- [ ] git stash show -p

#### Q96. Which statement is true of the git push command?

- [x] By default, a push doesn't send tags to the remote repository.
- [ ] Only annotated tags are automatically pushed to the remote repository with a commit.
- [ ] Tags are pushed to the remote repository with their respective commits.
- [ ] Commits can be tagged only when they are created.
