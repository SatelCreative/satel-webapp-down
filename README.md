# Satel Webapp Down
This centralized GitHub action remove webapp's docker services

## Usage 
```yml
name: "Docker up"
on:
  pull_request:
    types:
      - opened
  push:
    tags:
      - "*"
    branches:
      - main   
    
    build-server:
    name: Build server
    needs: [generate-variables, build-client]
    runs-on: <host_name>
    steps:
      - name: Docker down   
        uses:  SatelCreative/satel-webapp-down@feature/webapp-deployment-shell
        with:
          app-name: <app-name> 
          registry: ${{ steps.registry-push.outputs.registry }}
          clean-branch-name: ${{ steps.registry-push.outputs.clean_branch_name }}
```

- `host_name` is `self-hosted` or the name of server where the action runner is hosted, `cosmicray` for example
- `app-name` can be `st-pim` or `sb-pim` for example and it's optional
- `registry` & `clean-branch-name` parameter is set in a previous step  