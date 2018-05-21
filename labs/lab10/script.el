Script started on Mon 01 May 2017 02:25:39 PM EDT
ajs94@boole:~/CS214/labs/lab10/elisp$ cat lab10_part1.el a lab10_part2.el
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

ajs94@boole:~/CS214/labs/lab10/elisp$ exit

Script done on Mon 01 May 2017 02:26:03 PM EDT
