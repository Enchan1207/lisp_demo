;; リストを反転する
(defun rev (x)
    (if (null x) 
        '()
        (append 
            (rev (cdr x))
            (list (car x))
        )
    )
)

(defparameter l '(1 2 3 4))
(print (rev l))
