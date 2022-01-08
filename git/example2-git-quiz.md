##   2Git sprawdzic w pracy

#### Q3. Describe what the following git commands do to the commit history.

```bash
`git reset --hard HEAD~5
`git merge --squash HEAD@{1}
```

- [ ] Reset the HEAD to the 5th commit in the repo, then merges to the master branch
- [x] Reset the commit branch back before the last 5 commits, then squashes them into a single commit
- [ ] Delete the last 5 commits
- [ ] Merges the last 5 commits into a new branch


#### Q20. What commands would you use to force an overwrite of your local files with the master branch?

- [ ] ⠀
```bash
`git pull --all
`git reset --hard origin/master
```
- [ ] ⠀
```bash
`git pull -u origin master
`git reset --hard master
```
- [ ] ⠀
```bash
`git pull origin master
`git reset --hard origin/myCurrentBranch
```
- [x] ⠀

```bash
`git fetch --all
`git reset --hard origin/master
```
