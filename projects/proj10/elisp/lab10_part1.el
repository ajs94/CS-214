;;; lab10_part1.el
;;;
;;; Aaron Santucci
;;; Date April 28, 2017
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Exercise 1a
;;;;;;;;;;;;;;;;;;
(lambda (a b c d) (max (abs a) (abs b) (abs c) (abs d)) )

;;;Exercise 1b
;;;;;;;;;;;;;;;;;;
(defun add (x y z)
  (+ x y z))
add
(defun makeNull(x)
  (null x))
makeNull
(defun seventeenPointTwo()
  17.2)
seventeenPointTwo

(add 1 2 3)
6
(makeNull 14)
nil
(seventeenPointTwo)
17.2
