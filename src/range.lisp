;; range
(defun range (end &optional (start 0) (stride -1))
    (let ((list-size (- end start)))
        (labels
            ((iter (x l)
                (if (>= x end)
                    (nreverse l)
                    (iter (+ x stride) (cons x l)))
                ))

            (iter start '()))))

(print (range 11 2 2))
