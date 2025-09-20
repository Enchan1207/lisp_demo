;; n番目のフィボナッチ数
(defun fibonacci (x)
    (cond 
        ((= x 0) 0)
        ((= x 1) 1)
        ((> x 1) (+ (fibonacci (- x 2)) (fibonacci (- x 1))))
    )
)

;; コマンドライン引数は sb-ext:*posix-argv* という名前の特殊な変数に入る
(defparameter n 
    (parse-integer (cadr sb-ext:*posix-argv*))
)

(print (fibonacci n))
