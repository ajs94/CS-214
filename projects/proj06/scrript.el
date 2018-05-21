Script started on Tue 14 Mar 2017 04:15:41 PM EDT
ajs94@chomsky:~/CS214/projects/proj06$ sc  cata  array processing             _processing          elisp.el
;;; array_elisp.el builds, reads in, and prints an array
;;;
;;; by Aaron Santucci ajs94
;;; Date: March 14, 2017
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun printArray(anArray Size)\
  (if (>= size 0)
      (progn (princ(aref anArray size)) (readArray(anArray size-1)))
    nil)
  )
printArray


(defun readArray(anArray size)
  (princ "Enter the values of the array: ")
  (if (>= size 0)
      (progn (setq (aref anArray (size)) (read)) (readArray(anArray size-1)))
    nil)
  )
readArray


(defun main()
  (princ "Enter the size of the array: ")
  (setq size (read))
  (setq anArray (make-vector size : initial-element 0))
  (readArray(anArray size))
  )
main
ajs94@chomsky:~/CS214/projects/proj06$ exit

Script done on Tue 14 Mar 2017 04:16:08 PM EDT
