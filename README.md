# github repository dispatch action

![Repository License](https://img.shields.io/github/license/RekGRpth/github-repository-dispatch-action)
![Repository Release](https://img.shields.io/github/v/release/RekGRpth/github-repository-dispatch-action)

repository dispatch to definded repository

### usage

```yaml
steps:
  - uses: rekgrpth/github-repository-dispatch-action@v1
    with:
      client-payload: '{"repository": ${{ toJson(github.event.repository.name) }}}' # repository dispatch client payload, default: {}
      event-type: latest # repository dispatch event type, required
      repository: ${{ github.repository_owner }}/${{ matrix.repo }} # repository dispatch repository, default: current workflow repository
      token: ${{ secrets.PUBLIC_REPO_ACCESS_TOKEN }} # repository dispatch public repo access token, required
strategy:
  matrix:
    repo:
      - repo1
      - repo2
      - repo3
```
