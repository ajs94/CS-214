;;; factorialElisp.el displays the factorial of an input
;;;
;;; Input: n; the factorial being taken
;;; PRE: n is a positive integer
;;; Output: output; factorial of n
;;;
;;; by: Aaron Santucci ajs94

;;; displayFactorial recursively generates the factorial of its parameter n
;;; Param: n; an integer 
;;; Output: the factorial of n
(defun displayFactorial(n)
  (if (< n 2)
      1
    (* n (displayFactorial (- n 1) )))
  )
displayFactorial


;;; main function
;;; input: n
;;; output: factorial of n from function displayFactorial
(defun main(n)
  (displayFactorial n)
  )
main



;;; Testing !!
(displayFactorial 2)
2

(displayFactorial 5)
120

(displayFactorial 7)
5040






