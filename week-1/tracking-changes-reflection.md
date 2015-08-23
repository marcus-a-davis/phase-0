## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?

Tracking and adding changes makes it easy to collaborate and simple to revert to previous versions of a file in case of bugs.

- What is a commit?

A commit is a save point in git. As such you can revert back to any previous commit you've made.

- What are the best practices for commit messages?

The first line of your commit message has an upper soft limit of 50 characters and should cover the main point of whatever changes you've made. The rest of the message should use the imperative, present tense version of verbs (i.e. "change" instead of "changed") and include the motivation for the change it contrast it with the previous behavior of the program.

- What does the HEAD^ argument mean?

It indicates the previous commit and is used in the "git reset " command in case you want to undo any changes you've made.

- What are the 3 stages of a git change and how do you move a file from one stage to the other?

The stages of a git change are committed, modified and staged. Committed files are saved locally, modified files have been changed but not committed to your local system and staged files have been marked as modified and will be committed in their current version the next time you commit.

You create modified files by changing them from your working directory. To check that these changes have been noticed you can use "git status".

To add any untracked files to be tracked, or add changes to files that are tracked, to the staging area you use "git add " followed by the name of the file(s) you want to add. Once you've added them you can commit them by using "git commit -m" followed by the message you'd like to go along commit. At this point the changes to the file have been saved and you can revert back to this version of your project at any point in the future.

- Write a handy cheatsheet of the commands you need to commit your changes?

git status - displays the status of any modified or newly tracked files since your last commit

git add - followed by the file(s) you want to commit and adds them to the staging area

git commit -m - saves the changes from the staging area and is followed by the message you'd for your change wrapped in parathenses.

git push origin - is followed by the name of the branch you'd like to push to

- What is a pull request and how do you create and merge one?

Pull requests are notifications about any changes you've made to a repo on GitHub. To create a pull request, after pushing changes to a branch to GitHub, go to GitHub and select the branch you'd like to merge with. Select "compare and pull request" (or pull request), select "create pull request,"" select "merge pull request", confirm your merge, and your branches should be merged.


- Why are pull requests preferred when working with teams?

Pull requests enable you to ensure there haven't been any changes to the branch you were working on since you last cloned it to your local system. Because of this you can spot any potential conflicts between your version and the remote version and fix any errors before attempting to merge them with the remote branch.
