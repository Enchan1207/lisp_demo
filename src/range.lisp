;; range
;; startからendを上回らない公比stepの数列をリストとして生成する
(defun range (start end step)
    (let ((list-size (- end start)))
        (labels
            ((iter (x l)
                (if (>= x end)
                    (nreverse l)
                    (iter (+ x step) (cons x l)))
                ))

            (iter start '()))))

(print (range 2 11 2))
