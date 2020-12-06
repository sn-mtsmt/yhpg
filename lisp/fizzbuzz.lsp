(defun FizzBuzz (n)
  (dotimes (i n)
      (cond ((eq (mod i 15) 0) (format t "~%fizzbuzz"))
            ((eq (mod i 5) 0) (format t "~%buzz"))   
            ((eq (mod i 3) 0) (format t "~%fizz"))   
            ((format t "~%~d" i))
      ))
   (return-from FizzBuzz "fizzbuzz"))

