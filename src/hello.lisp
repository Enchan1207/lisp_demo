;; println
(write-line "Hello, World!")

;; 式と式が別個に定義されていてもよい (上から順次実行されていく)
(write-line "Is this S-Expression?")

;; 変数
(defparameter var1 123)
(defparameter var2 456)

;; printf
(write-line (format nil "var1 = ~d, var2 = ~d" var1 var2))

;; 演算
(defparameter var3 (+ var1 var2))
(write-line (format nil "var1 + var2 = ~d" var3))

;; 再代入できる
(setf var3 0)
(write-line (format nil "var3 re-assigned: ~d" var3))

;; リスト
;; 基本的に括弧で括ればリストになる。リストの先頭は関数やマクロの名前としてみなされる。
;; シングルクォートをつけた概念は "シンボル" になる。
(defparameter len (length '(write-line "This is a list!")))
(format t "length of list: ~d ~%" len)

;; 配列
(defparameter arr1 #(1 2 3 4 5))

;; 要素の参照 インデックスは0-originで、正の整数
(write (aref arr1 0))(terpri)
(write (aref arr1 1))(terpri)

;; `ref` の名前の通り、参照を取得している?
(setf (aref arr1 0) 10)
(write (aref arr1 0))(terpri)

;; 関数 引数はリストで渡す 戻り値は最後に評価された関数のそれ
(defun add (x y)
    (+ x y)
)
(write (add 1.23 4.56))(terpri)

;; 条件分岐
(defun number-type (n)
    (let (type-label)
        (setf type-label (if (oddp n) "ODD" "EVEN"))
        (format nil "number ~d is ~a!" n type-label)
    )
)
(write-line (number-type 2))
(write-line (number-type 3))
