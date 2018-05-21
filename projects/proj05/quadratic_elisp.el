;;; quadract_elisp.el find the roots of a quadratic equation
;;;
;;; Input: reals a, b, c
;;; Output: the two roots of quadratic with a, b, c
;;;
;;; Completed by: Aaron Santucci ajs94
;;; Date: March 7, 2017
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun quadraticRoots(a b c)
  (list (/ (+ (- 0 b) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a)) (/ (- (- 0 b) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a)))
  )
quadraticRoots



(defun main(a b c)
  (interactive "Enter the value for a: \nEnter the value for b: \nEnter the value for c: ")
  (setq result (quadraticRoots(a b c)))
  (setq root1 (elt result 0))
  (setq root2 (elt result 1))
  (message "The roots of this equation are %s and %s" root1 root2)
  )
main





;;; Testing...

(quadraticRoots 5 10 2)
(-0.2254033307585166 -1.7745966692414832)

(quadraticRoots 4 5 1)
(-0.25 -1.0)

(quadraticRoots 2 4 0)
(0.0 -2.0)





