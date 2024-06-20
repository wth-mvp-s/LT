git 
    git config --global user.name "louis.bodal"

# branch doublon backup
git branch new-branch
	create a new branch named new-branch based on the currently checked-out commit (HEAD)
	
	
[//]

# Updating Remote Branch Name:
```git branch -m new-branch-name```
If the branch you renamed has already been pushed to a remote repository, you'll need to delete the old branch on the remote and push the new one. Here’s how you can do it:

- Delete the old branch on the remote
```git push origin --delete old-branch-name```

- Push the new branch to the remote
```git push origin new-branch-name```

- Reset the upstream branch for the new branch name
```git branch --set-upstream-to=origin/new-branch-name new-branch-name```

- __It's a good practice to communicate such changes to your team members.__

# to chechout concret commit 
```git checkout a1b2c3d4``` 65f9b2ddbaf92536892f91b764358fa9c10bfc04


# add and commit in one command
```git commit -am "message"