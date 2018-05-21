;;; split.el splits a string into two substrings.
;;;
;;; Input: aString, the string to be split,
;;;        pos, the split position.
;;; Output: the substring of aString before pos, and
;;;         the substring of aString from pos onwards.
;;;
;;; Begun by: Dr. Adams, for CS 214 at Calvin College.
;;; Completed by:
;;; Date:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;
;;; split() splits a string into its two substrings.  
;;; Receive: aString, the string to be split,         
;;;        pos, the split position.                   
;;; PRE: 0 <= pos < the length of aString.
;;; Return: the substring of aString before pos, and  
;;;         the substring of aString from pos onwards.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun split(aString pos)
  (list (substring aString 0 pos) (substring aString pos (length aString)))
  )
split






(defun main (aString pos)
  (interactive "sEnter the string to be split: \nnEnter the split position")
  (setq result (split aString pos))
  (setq part1 (elt result 0))
  (setq part2 (elt result 1))
  (message "The first part is %s and the second part is %s" part1 part2))
main




;;;Testing !!

(main "hello" 0)
"The first part is  and the second part is hello"



(main "hello" 3)
"The first part is hel and the second part is lo"


(main "hello" 5)
"The first part is hello and the second part is "





















    
