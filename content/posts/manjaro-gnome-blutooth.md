---
title: "Gnomeに接続したBluetoothヘッドホンのプロファイルが変更できなくて困った"
date: 2020-08-01T18:22:09+09:00
draft: false
---

Gnome(Manjaro Gnome Edition)に接続したBluetoothヘッドホンのプロファイルが変更できなくて困ったのでメモ。

<!--more-->

# 状況

Bluetoothヘッドホンを接続するとプロファイルがHSP/HFPで固定され、A2DPに変更しようとすると、`プロファイルをA2DPに変更できませんでした`みたいな内容のエラーが出てしまう  
この状態になるとノイズが大変なことになるのでなんとかしてA2DPにしたい

# 解決方法

まず、`/etc/bluetooth/audio.conf`を作成し、以下のようにして保存する

```
[General]
Enable=Source,Sink,Media,Socket
Disable=Headset
```

次に、Bluetoothヘッドホンを切断してからbluetoothサービスを再起動する

```
$ sudo systemctl restart bluetooth.service
```

これでBluetoothヘッドホンを接続するとA2DPが使われるようになる

何故か定期的に起きる(電源OFFからの起動時にaudio.confを読み取ってくれない?)ので、  
そんなときはbluetoothサービスを再起動すると治る  
(もしかしたらaudio.confの内容関係なくサービスの再起動で治るのかもしれない。未検証)
