;; fizzbuzz
(defun fizzbuzz (x)
    (cond
        ((zerop (mod x 15)) "FizzBuzz")
        ((zerop (mod x 5)) "Buzz")
        ((zerop (mod x 3)) "Fizz")
        (t x)
    )
)

;; コマンドライン引数は sb-ext:*posix-argv* という名前の特殊な変数に入る
(defparameter n 
    (parse-integer (cadr sb-ext:*posix-argv*))
)

(dotimes (x n) 
    (format t "~a" (fizzbuzz (1+ x)))
    (terpri)
)

