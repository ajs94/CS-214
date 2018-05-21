;;; selection_lisp.el returns the corresponding letter grade of a given average
;;; Copleted by: Aaron Santucci ajs94
;;; Date: February 20, 2017

(defun letterGrade(score)
  (cond
   ((> score 89) "A")
   ((> score 79) "B")
   ((> score 69) "C")
   ((> score 59) "D")
   (t "F")
   )
  )
letterGrade


	  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; main function                        ;;;
;;; input: average integer               ;;;
;;; output: corresponding letter grade   ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun main (score)
 (interactive "sEnter your average grade: ")  ; read year
 (message "%d" (letterGrade score)))              ; display its code
main


;;; Tests...

(letterGrade 93)
"A"
(letterGrade 84)
"B"
(letterGrade 75)
"C"
(letterGrade 66)
"D"
(letterGrade 57)
"F"





