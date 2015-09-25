# Phase 3 Github Workflow

## Configuring your `git` environment

Just as the `.bash_profile` configures your shell environment, the `~/.gitconfig` file configures your git configuration's default values

To prevent accidentally committing files that don't need to be recorded (things that are specific to you e.g. log files)
setup [global_gitignore](https://help.github.com/articles/ignoring-files). Make sure you ignore `database.yml` file and log files.

## Here's a General workflow

- Clone the challenge repo.
- Create your own branch (github usernames separated by dashes) e.g. `sgharms-add-login-to-main-layout`
- Your work should happen in a series of small and concise commit messages. Basically, your solution shouldn't be a 1 gigantic commit.
- Continuously push your branch to github.
- When you're satisfied with your solution, submit a pull request.
- We never ever ever push to master, like ever.
- We never ever ever submit a pull request with failing tests, like ever.
- As your project grows larger, it's nice to have an integrated testing suite automatically run after you push your code e.g. [Travis CI](https://travis-ci.org/) or [Circle CI](https://circleci.com) set up.

Here's a typical (ideal) workflow:

1. `git checkout -b my_feature`
2. Work
  1.  [Spike][]: a timeboxed investigation
  2.  Test _For those unfamiliar with testing, you will grow to include this in your process_
  3.  Write a Test-driven implementation _For those unfamiliar with testing, you will grow to include this in your process_
  4.  Commit
    1.  Commits should have a subject line (fewer than 50 characters in length)
    2.  After the "subject line" there should be a blank line
    3.  After the blank line you should include a description of what happens in the code.  Tell us why you did it
2. `git checkout master`
3. `git pull`
4. `git checkout my_feature`
5. `git rebase master`
6. `git push origin my_feature`
7. `git checkout master`
8. `git pull`
9.  Open a pull request from `my_feature` to `master`
10.  Ask a teammate to review your pull request.  They need to **review** it.  **Do not** simply push the green merge button
11.  If you need to make additional commits to satisfy notes from yoiur peer, make them on your branch e.g. `my_feature` and then `git push origin my_feature`.  This will *add* your commit and automagically update your pull request.  No need to open another branch!
12.  When your teammate comments "Looks good" or :thumbsup:, hit that green button
13.  On your local directory, `git checkout master` and `git pull`.  You're going to see _your branch_ merged and folded into `master`.  Congrats!  You're in THE FLOW.

## Important Notes

* Nowhere do you type `git merge`
* Merging happens _via GitHub_.

[Spike]: http://searchsoftwarequality.techtarget.com/definition/spike
