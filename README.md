# dotfiles
http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html
http://farseerfc.me/zhs/using-gnu-stow-to-manage-your-dotfiles.html
使用stow来管理dotfiles。
> GNU Stow is a symlink farm manager
在~目录下建立一个dotfiles的文件夹。
里面建各个app的子文件夹，把原~目录下的.文件都mv到各自的目录下。
之后在dotfiles目录下分别执行stow app。
之后~目录下ll -a显示各.文件都是软链接文件了。
