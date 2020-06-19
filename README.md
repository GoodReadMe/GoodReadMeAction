# GoodReadMeAction

Keep your ReadMe up to date. If you mention version of your library inside your ReadMe. Add this action for keep actual version in the ReadMe.

## Example usage
```yaml
on:
  release:
    types: [published]

jobs:
  update-readme:
    name: Update readMe
    runs-on: ubuntu-latest
    steps:
    - name: GoodReadMe
      uses: GoodReadMe/GoodReadMeAction@0.3
```

### For selfhost
Add `CLIENT_SECRET` and `HOST` to secrets
```yaml
on:
  release:
    types: [published]

jobs:
  update-readme:
    name: Update readMe
    runs-on: ubuntu-latest
    steps:
    - name: GoodReadMe
      uses: GoodReadMe/GoodReadMeAction@master
      with:
        client_secret: ${{ secrets.CLIENT_SECRET }}
        service_host: ${{ secrets.HOST }}
```
