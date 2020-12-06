(defun split (x str)
  (let ((pos (search x str))
        (size (length x)))
    (if pos
      (cons (subseq str 0 pos)
            (split x (subseq str (+ pos size))))
      (list str))))

(defun count-str (str chr)
  (- (length (split chr str)) 1))

(defun solve (input)
  (setq counts (make-array 5))
  (loop for char in (map 'list #'string "A234567890JQK")
       do (setf (aref counts (count-str input char)) (+ (aref counts (count-str input char)) 1)))
  (cond ((eq (aref counts 4) 1) (string "4K"))
        ((and (eq (aref counts 3) 1) (eq (aref counts 2) 1)) (string "FH"))
        ((eq (aref counts 3) 1) (string "3K"))
        ((eq (aref counts 2) 2) (string "2P"))
        ((eq (aref counts 2) 1) (string "1P"))
        (t (string "--"))))


