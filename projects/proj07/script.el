Script started on Tue 04 Apr 2017 03:49:20 PM EDT
ajs94@hopper:~/CS214/projects/proj07$ cat NameTester.el
cat: NameTester.el: No such file or directory
ajs94@hopper:~/CS214/projects/proj07$ cat NameTester.el[1P[1@n
;;; nameTester.el simulates and tests an e-LISP Name type.
;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;; Completed by: Aaron Santucci
;;; Date: April 4, 2017


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Name constructs a name from three strings.      ;;
;;; Receive: first, middle and last, three strings. ;;
;;; Return: the triplet (first middle last).        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun Name (first middle last)
  (list first middle last))
Name


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getter methods for the Name item                 ;
;;; Receive: theName, a Name.                       
;;; Return: the respective string in theName.           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun getFirst(theName)
  (car theName))
getFirst

(defun getMiddle(theName)
  (car (cdr theName)))
getMiddle

(defun getLast(theName)
  (car (cdr (cdr theName))))
getLast

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; mutator methods for the Name item                 ;
;;; Receive: theName, a Name.                       
;;; Return: the respective string in theName.           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun changeFirst(theName aFirst)
  (setf (nth 0 theName) aFirst))
changeFirst

(defun changeMiddle(theName aMiddle)
  (setf (nth 1 theName) aMiddle))
changeMiddle

(defun changeLast(theName aLast)
  (setf (nth 2 theName) aLast))
changeLast


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lfmi return the full name in L-F-MiddleInitial ;
;;; Return: myLast, myFirst, String MiddleInitial  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun lfmi(theName)
  (concat (getLast theName) ", " (getFirst theName) " " (substring (getMiddle theName) 0 1) ".")
  )
lfmi


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFullName returns a full name in F-M-L order. 
;;; Return: myFirst, myMiddle, myLast.           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun getFullName(theName)
  (concat (getFirst theName) " " (getMiddle theName) " " (getLast theName)))
getFullName


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printName displays a name object.         
;;; Receive: theName, a Name;                 
;;;          buffer, the name of a buffer.   
;;; Output: the strings in theName to buffer. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun printName(theName buffer)
  (princ (getFullName theName) buffer)
  theName)
printName


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A simple driver for our Name functions. ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(progn
  (require 'cl)                              ; assert
  (setq aName (Name "John" "Paul" "Jones"))  ; build a Name

  (assert (equal (getFirst aName) "John" ))  ; test it
  (assert (equal (getMiddle aName) "Paul" ))
  (assert (equal (getLast aName) "Jones" ))
  (assert (equal (getFullName aName) "John Paul Jones" ))

  (setq buf (get-buffer "nameTester.el"))    ; buf = this buffer
  (assert (eq (printName aName buf) aName ) ) ; output
  (terpri buf)                               ; newline
  (princ "All tests passed!" buf)            ; feedback
  (terpri buf)                               ; newline

  ;;; project tests
  (changeFirst aName "Aaron")
  (changeMiddle aName "Joseph")
  (changeLast aName "Santucci")

  (assert (equal (getFirst aName) "Aaron" ))
  (assert (equal (getMiddle aName) "Joseph" ))
  (assert (equal (getLast aName) "Santucci" ))
  (assert (eq (printName aName buf) aName))
  (assert (equal (lfmi aName) "Santucci, Aaron J." ))

  )



;;; Testing ;;;
John Paul Jones
All tests passed!
t

ajs94@hopper:~/CS214/projects/proj07$ exit

Script done on Tue 04 Apr 2017 03:49:39 PM EDT
