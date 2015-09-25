# How to Submit a Challenge

We will be using github to submit and review all challenges. There are three standard workflows we will use.

1. [Challenge Submission Workflow](#challenge-submission-workflow)
1. [Challenge Review and Refactor Workflow](#challenge-review-and-refactor-workflow)
1. [Group Project Workflow](#group-project-workflow)

## Challenge Submission Workflow

1. Clone the repository into your local repository

  ```shell
  git clone REPOSITORY_PATH
  ```

2. Create a branch named YOUR_NAME (if solo) or PAIR_NAME_1-AND-PAIR_NAME_2 (if working in a pair) and checkout this branch. **Note:** please use first name and last initial or full names to avoid confusion.

  ```shell
  git checkout -b StrandM-AND-AnneS
  ```

3. Complete your challenge. Commit early and often with meaningful commit messages.

  ```shell
  git add filename
  git commit -m "added test code"
  ```

4. When you have a completed challenge, push your branch to github

  ```shell
  git push origin StrandM-AND-AnneS
  ```

5.  Go to github and submit a pull request to master from your branch.

![](img/pr.png)

 **DO NOT MERGE THE REQUEST INTO MASTER.**  
 
**Important:** When you submit your pull request you must select the right fork. Hit "edit" on the pull request screen to change the fork you're submitting a pull request to.

![](img/edit.png)

Select fiddler-crabs-2014. Now you're good to go.
![](img/select.png)


  A teacher or fellow boot will review your code by commenting on your pull request.


## Challenge Review and Refactor Workflow

When completing a challenge review, you will need to get the existing code from a branch on github so the workflow is slightly different.


1.  If you don't already have a local copy of the repository, clone the repository into your local repository

  ```shell
  git clone REPOSITORY_PATH
  ```

  If you do already have a local copy of the repository, make sure the master branch is up to date.

  ```shell
  git checkout master
  git pull origin master
  ```

2. You now need to checkout the branch you are reviewing (which will probably be a fellow boots name). This branch is available to checkout even if you don't see it in the list of branches (you may need to look on github to see the name).

  ```shell
  git checkout StrandM-AND-AnneS
  ```

3. From this branch, create a new branch for your review and refactor.

  ```shell
  git checkout -b BrickT-refactor
  ```

4. Complete your challenge. Commit early and often with meaningful commit messages.

  ```shell
  git add filename
  git commit -m "added test code"
  ```

5. When you have a completed challenge, push your branch to github

  ```shell
  git push origin BrickT-refactor
  ```

6. Go to github and submit a pull request to the branch you are reviewing (`StrandM-AND-AnneS`) from your branch (`StrandM-AND-AnneS-refactor`).

 **DO NOT MERGE THE REQUEST.**

A teacher or fellow boot will review your code by commenting on your pull request.

![](img/pr.png)

**Important:** When you submit your pull request you must select the right fork. Hit "edit" on the pull request screen to change the fork you're submitting a pull request to.

![](img/edit.png)

Select fiddler-crabs-2014. Now you're good to go.
![](img/select.png)


## Group Project Workflow

When working on a group project, you will be starting with a brand new repository which you will create as a private repository in the fiddler-crabs-2014 organization.

1. [Create a new repository on github](https://help.github.com/articles/create-a-repo).

2. Clone this repository (empty except for a README.md file) to your local repository.

  ```shell
  git clone REPOSITORY_PATH
  ```

3. Create a branch for each new feature

  ```shell
  git checkout -b featureX
  ```

4. Work on your feature, commit often.

  ```shell
  git add newfile
  git commit -m "added tests to featureX"
  ```

5. When you have working, complete code for your feature, push your branch to github and submit a pull request to master.

  ```shell
  git push origin featureX
  ```

6. Since this pull request is to your team repository, you **CAN** merge into master. A good workflow is to require another teammate to review your pull request and merge it.

7. Before working on a another feature, make sure you always have the latest version of master by first merging any open pull requests on github and then pulling these changes into your local master branch.

  ```shell
  git checkout master
  git pull origin master
  ```

