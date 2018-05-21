;;; logTable.el displays a table of logarithms.
;;;
;;; Input: start, stop and increment, three reals.
;;; PRE: start < stop and increment > 0.
;;; Output: A table of logarithms from start to stop,
;;;          with interval of increment.
;;;
;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;; Completed by: Aaron Santucci ajs94
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; displayLogTable() recursively generates the actual table of logs. ;;;
;;; Receive: start and stop, the limit values for the table;          ;;;
;;;             increment, the step value for the table;              ;;;
;;;             buf, the buffer in which to display the table.        ;;;
;;; Output: The table of logs from start to stop, by increment.       ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun displayLogTable(start stop increment buffer)
  (if (<= start stop)
      (progn
	(princ start buffer)
	(princ "\t" buffer)
	(princ (log10 start) buffer)
	(terpri buffer)
	(displayLogTable (+ start increment) stop increment buffer)
	)
  ))
displayLogTable


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; main is a 'driver' for displayLogTable()                   ;;;
;;; Input: start, stop and increment.                          ;;;
;;; Output: The table of logs from start to stop by increment  ;;;
;;;          in a buffer named 'logTable.out'.                 ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun main (start stop increment)
  "print a table of logarithms"
   (interactive "nEnter starting value: \nnEnter stopping value: \nnEnter increment value: ")
   (if (get-buffer "log_table.out")
       (kill-buffer "log_table.out"))
   (setq buf (switch-to-buffer-other-window "log_table.out"))
   (displayLogTable start stop increment buf))
main



;;; Testing !!

(main 1 10 .5)
nil






















1	0.0
1.5	0.17609125905568124
2.0	0.3010299956639812
2.5	0.3979400086720376
3.0	0.47712125471966244
3.5	0.5440680443502757
4.0	0.6020599913279624
4.5	0.6532125137753437
5.0	0.6989700043360189
5.5	0.7403626894942439
6.0	0.7781512503836436
6.5	0.8129133566428556
7.0	0.8450980400142568
7.5	0.8750612633917001
8.0	0.9030899869919435
8.5	0.9294189257142927
9.0	0.9542425094393249
9.5	0.9777236052888477
10.0	1.0
