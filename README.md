# Opera News

Mobile app

## Technology


## Clone Project

Clone the project by git@gitlab.com:trandinhmanh301103/opera-news.git<br />
or https://gitlab.com/trandinhmanh301103/opera-news.git

## Git Flow

- Step 1: Update status of task in [trello]
- Step 2: checkout to `develop`, pull newest code from `develop`
    ```
    git checkout develop
    git pull origin develop
    ```
- Step 3: Create branch for task, base in branch `develop`

    **Rule of branch name:**

    - If `Tracker` in trello is `'Feature'` or `'Subtask'` of Feature, branch name start with `feat/`
    - If `Tracker` in trello is `'Bug'` or `'Subtask'` of Bug, branch name start with `fix/`
    - If other, branch name start with `task/`

    Example: Issue in trello have Tracker is `'Subtask'` of Feature, Name is `BE Create Login API`. Branch name is `feat/orn-be-create-login-api`
    ```
    git checkout -b feat/orn-be-create-login-api develop
    ```
- Step 4: When commit, message of commit follow rule
    - If column `Tracker` in Redmine is `'Feature'`, branch name start with `feat: `
    - If column `Tracker` in Redmine is `'Bug'`, branch name start with `fix: `
    - If other, branch name start with `task: `
    - Next is string `[orn]`
    - Next is commit content

    Example: `feat: [orn] Coding page login` or `fix: [orn] Coding page login`
- Step 5: When create merge request
    
    **Rule of merge request name:**
    
    - Start with `[orn]`
    - Next is  merge request content

        Example: `[orn] Coding page login`

    **Rule of merge request description:**

    - In **`What does this MR do and why?`**, replace _`Describe in detail what your merge request does and why.`_ with your content of this merge request
    - In **`Screenshots or screen recordings`**, replace _`These are strongly recommended to assist reviewers and reduce the time to merge your change.`_ with screen recordings of feature or task for this merge request
    - Check the checklist
    - Select approver
    - Select merger
- Note:
    - If have conflict with branch `develop` or need to get newest code from branch `develop`
    - Fix conflict and create merge request from `orn/123-dev` to `develop`
