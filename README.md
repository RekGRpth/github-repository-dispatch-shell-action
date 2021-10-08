# github repository dispatch shell action

## call github repository dispatch to definded repository

### usage

#### inside source pero workflow

```yml
steps:
  - env:
      GITHUB_TOKEN: ${{ secrets.PUBLIC_REPO_ACCESS_TOKEN }} # repository dispatch public repo access token, required
      INPUTS_CLIENT_PAYLOAD: '{"repository":${{ toJson(github.event.repository.name) }}}' # repository dispatch client payload, required
      INPUTS_EVENT_TYPE: latest # repository dispatch event type, required
      INPUTS_REPOSITORY: ${{ github.repository_owner }}/${{ matrix.repo }} # repository dispatch repository, default: current workflow repository
    uses: rekgrpth/github-repository-dispatch-shell-action@v1
strategy:
  matrix:
    repo:
      - repo1
      - repo2
      - repo3
```

#### inside target pero workflow

```yml
on:
  repository_dispatch:
```
