# 学習メモ

## 開発環境の構築

ホストマシンは M4 MacBook Pro なので、 `brew install sbcl`

sbcl - _Steel Bank Common Lisp_ は Common LISP の実装のひとつ
Common LISP は LISP の方言らしい

## REPL

```sh
sbcl
```

```lisp
(write-line "Hello,World!")
```

`^D` で抜ける

## スクリプト実行

```sh
sbcl --script src/hello.lisp
```
