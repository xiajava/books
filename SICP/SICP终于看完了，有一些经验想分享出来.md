# [SICP终于看完了，有一些经验想分享出来](http://cocode.cc/t/sicp/3397)

[学习资料](http://cocode.cc/tags/%E5%AD%A6%E4%B9%A0%E8%B5%84%E6%96%99)

[galaxy21](http://cocode.cc/users/galaxy21)

##### 2015.11.14 部分错误更新 加入镇楼图(๑•ᴗ•๑)

![img](http://cocode.cc/uploads/default/optimized/2X/a/a399e135871accf399e0f5640f5d2308b5bd6a43_1_500x500.jpg)

### 工具

最开始的时候我用的是[DrRacket](http://racket-lang.org/)和racket方言。[DrRacket](http://racket-lang.org/)使用简单，自带中文，相比于emacs更加容易让新手接受。而关于racket方言因为有实时错误提示和类名归属，所以在前两章的大部分情况下都是使用racket方言。使用racket时候只需要将`#lang racket`放入第一行即可。

但是因为racket取消了set-car!和set-cdr!，所以从第二章末开始使用这两个函数的文件都需要将第一行改为`#lang planet neil/sicp`，这样就能保证程序正常运行。
在2.2.4中使用了图形编辑，只需要在第二行加入`(require ( planet "sicp.ss" ( "soegaard" "sicp.plt" 2 1)))`即可。

随着写的文件越来越大，在使用`#lang planet neil/sicp`的时候编译速度有点慢，因此从第四章开始就开始使用[Emacs](http://www.gnu.org/software/emacs/emacs.html)编辑[MIT Scheme](http://www.gnu.org/software/mit-scheme/)编译了。当然这个并不是必须的，所以关于[Emacs](http://www.gnu.org/software/emacs/emacs.html)和[MIT Scheme](http://www.gnu.org/software/mit-scheme/)以后再说。

### 参考资料

[SICP英文原版](https://mitpress.mit.edu/sicp/full-text/book/book.html)：SICP中文版虽然相比较其他计算机科学类的中翻书极为良心，但是难免一些小错误。而且参考原版也能更有利于理解。

[正文源码](https://mitpress.mit.edu/sicp/code/index.html)：有些正文中模糊和省略的地方可以参考。

[SICP公开课](http://i.youku.com/u/UNTcxODk3ODQw)：翻译良心

[MIT 6.001官网](http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-001-structure-and-interpretation-of-computer-programs-spring-2005/)：除了课程视频，还提供了大量的笔记和两次考试题，配合视频和书事半功倍。

[SICP 解题集](http://sicp.readthedocs.org/en/latest/index.html)：（到习题4.14）前两章讲解详细，如果有错误后面评论也会指出来。但是到了第三章答案和讲解质量就大幅下降，建议不要看。

[sicp-solutions](http://community.schemewiki.org/?sicp-solutions)：习题答案集（全），除了一些画图题和项目太大的没有答案外，基本都有答案。但是因为网站问题，有的答案排版有些问题。

[@uents blog](http://uents.hatenablog.com/entry/sicp/index)：日语博客（到第4章），讲解详细，会日语的同学可以看一下。他的[GitHub](https://github.com/Galaxy21Yang/sicp)是用DrRacket写的，而且能够保证每个题目都能跑起来。

[spacemanaki](https://github.com/spacemanaki/sicp)：sicp-solutions答案提供者的GitHub。

[ivanjovanovic](https://github.com/ivanjovanovic/sicp)：另一个答案比较全的GitHub。

##### 其他资料

[Weiqun Zhang's Blog](https://wqzhang.wordpress.com/sicp-solutions/)：（到习题4.49）部分答案见解独到。

[How to Design Programs63](http://www.htdp.org/2003-09-26/Book/)：另一本scheme经典教材，相当于SICP的前三章的详细版。

[Sample Programming Assignments](https://mitpress.mit.edu/sicp/psets/index.html)：书中一些比较大的项目的完整源码

### 其他

关于我的读书深度，在前三章中，内容还算比较简单，所以尽量做到正文读完，习题能够尽量自己完成。后两章难度明显上升，所以能做到完全理解正文就已经尽力了，习题方面前几题尽量先做，虽然大部分情况下很难完美做出来。最后一题就直接放弃，能看懂答案就不错了。 (๑•ᴗ•๑) 
虽然书看完了，但是里面有很多东西自己并没有真正掌握，用scheme编程也还没结束，所以以后还有可能二刷SICP，所以这篇文章今后还会持续更新。
当然也欢迎大家能够提出建议和问题，我也会尽力回答。

持续更新地址： http://blog.yangyize.com/2015/11/02/sicp/
GitHub： https://github.com/Galaxy21Yang