# GoodReadMeAction

Keep your ReadMe up to date. If you mention the version of your library inside of your ReadMe, then add this action to always keep the version up to date without manually updating it.

**The actions does not require any permission to your repository**

## How it works

App receives events about new releases -> App forks your repo -> App creates a pull request with the changes to your ReadMe file.

## Example usage
```yaml
name: Update ReadMe
on:
  release:
    types: [published]

jobs:
  update-readme:
    name: Update readMe
    runs-on: ubuntu-latest
    steps:
    - name: GoodReadMe
      uses: GoodReadMe/GoodReadMeAction@1.0
```

### For selfhost
[Setup selfhost app instanse](https://github.com/GoodReadMe/GoodReadMeApp#setup-the-app-for-self-host-usage)

Add `CLIENT_SECRET` and `HOST` to secrets
```yaml
name: Update ReadMe
on:
  release:
    types: [published]

jobs:
  update-readme:
    name: Update readMe
    runs-on: ubuntu-latest
    steps:
    - name: GoodReadMe
      uses: GoodReadMe/GoodReadMeAction@1.0
      with:
        client_secret: ${{ secrets.CLIENT_SECRET }}
        service_host: ${{ secrets.HOST }}
```

## Integration with mergify
```yaml
 - name: Automatic merge GoodReadMeBot
    conditions:
      - author:GoodReadMeBot
    actions:
      merge:
        method: merge
```

Action use [GoodReadMeApp](https://github.com/GoodReadMe/GoodReadMeApp)
