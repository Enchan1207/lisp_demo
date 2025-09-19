(defun fizzbuzz (x)
    (cond
        ((= (mod x 15) 0) "FizzBuzz")
        ((= (mod x 5) 0) "Buzz")
        ((= (mod x 3) 0) "Fizz")
        (t (format nil "~d" x))
    )
)

(dotimes (x 15) (write (fizzbuzz (+ x 1)))(terpri))
