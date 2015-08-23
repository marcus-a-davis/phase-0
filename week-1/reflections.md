##1.1 Think About Time Reflection

This challenge covered various time management techniques including timeboxing, the Fogg method and a few tips for encouraging work flow. Timeboxing is a scheduling technique in which you work for set periods of time with breaks before reflection instead of working continuously at a task until completion. A great example of timeboxing is the pomodoro technique, which I've employed in the past (albeit with longer intervals of 45 minutes working, 15 minutes of break than the suggested timeframe). 

I recently started using the time tracker Time Doctor to track my time and I'm pretty satisfied with it. It allows me to keep meticulous detail of my activities in an organized way and easily allows us me to demarcate breaks. In general, for Phase 0 I intend to use Time Doctor and the pomodoro technique together to work through tasks.

##1.2 The Command Line Reflection

1. A shell is a command language interpreter and bash is a command language.

2. The most challenging part of going through this material is simply the breadth of commands. If you aren't already familiar with using the command line, putting them together in useful combinations can be difficult.

3. Yes but, in fairness, I'd already gone through the Command Line Crash Course a few months ago and I had a much more difficult time doing so then.

4. For pure frequency, cd is likely the most used command but it's uses are very simple. However, being able to use popd and pushd effectively can save you a lot of time if your work requires much switching between directories but is slightly more difficult to adjust to. It's also very useful to be able to pull up a file from the command line so using becoming comfortable navigating and appending files from the shell is a must.

5. Yes, in order they are:

pwd - print working directory

ls - list directory

mv - move a file or directory (rename)

cd - change directory

../ - up one directory

touch - create an empty file

mkdir - make directory

less - page through a directory

rmdir - remove directory

rm - remove a file

help - read a manual page

##1.4 Forking and Cloning Reflection

**What would be your instructions to a new person for creating, forking and cloning a repository?**
If I were creating instructions for a new person I'd keep the instructions super simple by pointing out every choice to them. For creating a repository:

Scroll to and click on the large plus sign at the top right of the page.
Select "New repository".
Enter a repository name (no spaces allowed or special charachters other than "-" and "_").
Add a description (if you'd like).
Select who can view and commit to this repository.
Decide if you want to create a README (if you'd like).
Add a license and/or gitignore (if you'd like).
Click the "Create repository" button.
That is all.

For forking a repository:

Go to the page of the repository you'd like to fork.
Click the "Fork" button on the upper right side.
Congratulations. You have successfully forked a repository.

Cloning a repository (picked up from the forking instructions):

On the page of your newly created forked version (you should already be there),  copy the URL of the repository which is on the right side of the page.
Open your terminal.
Change into the directory where you want to clone the repository.
Type "git clone " and then paste in the URL you copied.
Hit return.
If prompted for your username and password enter those.
Type "ls" to check and see if the folder of the repository was created.
If it was, congratulations. You have cloned a remote repository unto your computer.

**Why fork a repository instead of just creating one?**
Forking a repository allows you to work on preexisting code which is great for open-source projects which allow anyone to download the original source code, work on it on their own and suggest changes. Forking is also highly useful for more traditional collaborative projects because it allows a safe way for multiple people to work on a project at the same time and only merge with the master branch when desired.

**What struggles did you have setting up git and GitHub and what did you learn from this?**
I'd previously setup git and GitHub so had no troubles when working on this challenge. However, if I recall correctly, I did have significant trouble originally getting git and GitHub functioning properly. In particular, I had trouble I had remembering some of the commands involved with copying particular files to a commit and remembering the folder layout once I create a project. Like with many other skills, I've found that this is a task that yields to practice and simply doing it over and over works wonders for adjusting to git and GitHub.