;;; lab10_part2.el lab10 CS 214
;;;
;;; Aaron Santucci
;;; Date April 28, 2017
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Exercise 1
;;;;;;;;;;;;;;;;;;

(setq double (function (lambda (x) (+ x x)) ))
(lambda (x) (+ x x))

(funcall double 11)
22

(setq triple (function (lambda (x) (+ x x x)) ))
(lambda (x) (+ x x x))

(funcall triple 11)
33

;;; Exercise 2
;;;;;;;;;;;;;;;;;;
(defun sum-squares(list)
  (apply '+ (mapcar '(lambda (x) (expt x 2)) list))
  )
sum-squares

(sum-squares '(1 2 3))          ; 14
14

(sum-squares '(1 2 3 4 5))      ; 55
55

(sum-squares '(-1 -2 -3 0 1))   ; 15
15

