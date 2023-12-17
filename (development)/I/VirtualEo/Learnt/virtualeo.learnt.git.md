# rebasing f into m, with conflicts related to many c in f

interactive rebase with squashed c

```
git checkout feature
git rebase -i HEAD~5
you can replace the word pick with squash or just s for the commits you want to squash into the commit above them.
    pick a1b2c3d First commit
    squash e4f5g6h Second commit
    squash i7j8k9l Third commit

    need to git pull, push 
    git checkout f
    git reabse master. no problem now.) 

```


#   git extensions

##  fetch
- fetch and Prune:
    f + cleans up any local branches that no longer exist on the remote.

- fetch all : for multiple repositories. 

## after rebase push 
    after successfull rebase, 
    while now I see 

    arrow up with new commits will be pushed 
    and 
    arrow down with two commits should be integrated (or will be lost if force push)

    the way to finish this rebase would be to make the push with 'Force with lease', could you confirm ? 

>   FORCE WITH LEASE safer, ensures not overwrite any additional commits that might have been pushed to the remote branch by others in the meantime.

        "Force with lease" checks that the remote branch is in the expected state before pushing.
        If someone else has pushed additional commits to the remote branch since you last fetched, "Force with lease" will prevent you from pushing and alert you to the new commits.
        This adds an extra layer of safety to prevent overwriting others' work.