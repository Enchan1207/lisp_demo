;; 階乗
(defun factorial (n)
    (if (> n 1) (* n (factorial (1- n))) 1)
)

;; コマンドライン引数は sb-ext:*posix-argv* という名前の特殊な変数に入る
(defparameter n 
    (parse-integer (cadr sb-ext:*posix-argv*))
)

(print (factorial n))
