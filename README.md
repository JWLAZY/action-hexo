# GitHub Action for Hexo

这个用于 hexo 的操作可以通过 hexo 命令行客户端执行任意操作。

## Usage

一个用于清理、生成和部署 Hexo 到默认公共仓库的示例工作流程如下：

### YAML syntax
```yaml
on: push
name: Deploy
jobs:
  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
    - name: Clean
      uses: heowc/action-hexo@main
      with:
        args: clean
    - name: Generate
      uses: heowc/action-hexo@main
      with:
        args: generate
    - name: Deploy
      uses: heowc/action-hexo@main
      env:
        EMAIL: <your-input-email>
        NAME: <your-input-name>
      with:
        args: deploy

```
### Environment variables

If using `hexo-deployer-git` when `Deploy` action,

* `NAME` - **Optional**. To specify a name when deploying. Defaults to ""

* `EMAIL` - **Optional**. To specify a name when deploying. Defaults to ""
