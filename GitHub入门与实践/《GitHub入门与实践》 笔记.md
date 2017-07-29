

`Upload Files`上传文件
趋势 https://github.com/trending
不需要在Git仓库中版本管理的文件记录在`.gitignore `文件中
`.git`目录存储这管理当前目录内容所需的仓库数据，目录内容称为`附属于该仓库的工作树 `
`commit`简述提交的更改，`description`记述更改的原因和详细内容，`commit`有指向该提交的哈希值
`Gist`用于管理和发布一些小的代码片段
`Download Zip`将当前阅读分支的文件单纯以ZIP形式打包下载，和`clone`不同
`README.py`记录该仓库中软件的说明或使用方法及许可协议等信息
点击代码某行，URL末尾自动添`#L10-15`
按`t`打开file finder，用部分名称搜索

### 改URL查看差别
```
https://github.com/rails/rails/compare/4-0-stable...3-2-stable
https://github.com/rails/rails/compare/master@{7.day.ago}...master
day
week
month
year
https://github.com/rails/rails/compare/master@{2013-01-01}...master
```

### Issue
 bug报告，询问探讨，To-Do list
GFM语法，图片拖到文本框可粘贴，添加`Lable`在左侧显示标签，里程碑
```
Tasklist语法
# 本月要做的任务
- [ ] 完成图片
- [x] 完成部署工具的设置
- [ ] 实现抽签功能
```
在提交信息中加入`#编号`连接到仓库对应的Issue编号，`用户名/仓库名/编号`
`close Issue`方法`fix #编号`
编号与`Pull Request`通用
选中评论按`r`引用可回复

### 其他功能
GitHub Pages
GitHub Jobs
GitHub API

### Keyboard shortcuts 

|           | Site wide shortcuts       |
| --------- | ------------------------- |
| s         | Focus search bar          |
| g n       | Go to Notifications       |
| g d       | Go to Dashboard           |
| ?         | Bring up this help dialog |
| j         | Move selection down       |
| k         | Move selection up         |
| x         | Toggle selection          |
| o / enter | Open selection            |

|      | Repositories        |
| ---- | ------------------- |
| g c  | Go to Code          |
| g i  | Go to Issues        |
| g p  | Go to Pull Requests |
| g w  | Go to Wiki          |

|      | Source code browsing             |
| ---- | -------------------------------- |
| t    | Activates the file finder        |
| l    | Jump to line                     |
| w    | Switch branch/tag                |
| y    | Expand URL to its canonical form |
| i    | Show/hide all inline notes       |

|      | Dashboards               |
| ---- | ------------------------ |
| g i  | Go to your issues        |
| g p  | Go to your pull requests |