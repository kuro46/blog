---
title: "tmux内でscreenを操作したい"
date: 2020-07-08T20:23:48+09:00
draft: true
---

tmuxでprefixを`C-a`とかに設定してるとtmux上のssh上のscreenセッションを操作できない  
`C-a j`でtmuxセッション内にprefixキーを送れるみたいなので、これを使うといいっぽい。

(コマンド的には`send-prefix`がそれみたい  
試してないけど、screenでの操作を継承してるらしい)
