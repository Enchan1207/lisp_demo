(defun fizzbuzz (x)
    (cond
        ((zerop (mod x 15)) "FizzBuzz")
        ((zerop (mod x 5)) "Buzz")
        ((zerop (mod x 3)) "Fizz")
        (t (format nil "~d" x))
    )
)

(dotimes (x 15) (write (fizzbuzz (+ x 1)))(terpri))
