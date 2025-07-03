# 利用開始まで

1. Typstをインストールする．cargoを使うととても簡単．
2. Fontを追加する．私はNoto Sans CJK JPを追加した．追加方法は詳細には説明しない．FontがTypstに認識されているかは`typst fonts`で確認できる．
3. VSCodeに`Tinymist Typst`をいれる．
4. VSCodeでmain.typを開く
5. `Shift+Ctrl+P`かその他の方法でコマンドパレットを開く
6. `Pin the Main file to the Opening Document`を探して実行する．
    - これによってファイルをまたいで参照することができるようになる．
7. main.typをプレビューする．

# 使い方

main.typですべてを合成している．それだけ言えばあとはよしなにという感じだろう．

function内で定義したユーティリティをcommands.typでimportして定義を引き上げている．three-line-tableなどをつかいたければ，ファイル冒頭で
```typ
#import "../commands.typ": *
```
とすればOK

# ローカルパッケージの導入

~~導入方法はここに．
https://github.com/typst/packages?tab=readme-ov-file#local-packages

~~現状参考文献関連の動作があまり良くないので，それを補うためのパッケージが配布されている．Typst Universには無いのでローカルパッケージとして配置して使う．
https://gist.github.com/zr-tex8r/444ba5e27b3deff157b4ed7f62a0fe1a

submoduleとして参照しているので，
```
git submodule init
```

を実行すればOK