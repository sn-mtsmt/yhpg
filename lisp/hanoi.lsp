(defun hanoi (n s g)
  (let ((r (- 6 (+ s g))))
    (if (> n 1) (hanoi (- n 1) s r) )
    (format t "[~d] ~d to ~d ~1%" n s g)
    (if (> n 1) (hanoi (- n 1) r g) )
))

