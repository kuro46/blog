---
title: "tmux内でscreenを操作したい"
date: 2020-07-08T20:23:48+09:00
draft: false
---

tmux上でscreenを起動中、tmux(`C-a`をprefixキーにしてある)が`C-a`を吸ってしまってscreenセッションを操作できず困ったのでメモ。

<!--more-->

# prefixキーをtmux内に送る

`prefix j`で送れる。解決!!  
prefixキーを`C-a`にしてるなら`C-a j d`でtmuxの上のscreenセッションからデタッチできる。

(コマンド的には`send-prefix`がそれみたい  
試してないけど、screenでの操作を継承してるらしい)
