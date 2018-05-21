Script started on Tue 11 Apr 2017 09:16:38 PM EDT
ajs94@noyce-kilby:~/CS214/projects/proj08/e-lisp$ cat name    tes mpTester.el Temperature. el
;;; tempTester.el tests the Temperature type
;;;
;;; By: Aaron Santucci
;;; April 11, 2017
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; A simple driver program for the temperature functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(progn
  (setq load-path (cons "." load-path))
  (load "Temperature.elc")
  (require 'cl)

  (setq baseTemp (Temperature 0 "F"))
  (setq limitTemp (Temperature 100 "C"))
  (setq stepValue 2.5)

  (loop
   (prin1 (concatenate 'string "Fahrenheit " (getFahren baseTemp) "     "))
   (prin1 (concatenate 'string "Celcius " (getCelcius baseTemp) "     "))
   (prin1 (concatenate 'string "Kelvin " (getFahren baseTemp)))
   (print "")
   (raise baseTemp stepvalue)
   (when (not (lessThan baseTemp limitTemp)) return 0)
   )
  )
"Fahrenheit      ""Celcius      ""Kelvin "
""


;;; Temperature.el creates a temperature 'object' with
;;;      stored degrees and scale
;;; By: Aaron Santucci
;;; Date: April 11, 2017
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun Temperature (degrees scale)
  (list degrees scale))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getter methods for the Temperature variables
;;; Receive: theTemp, a Temperature
;;; Return: the respective variable of theTemp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun getDegrees (theTemp)
  (car theTemp))
(defun getScale (theTemp)
  (car (cdr theTemp)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; converter methods for Temperature ;
;;; Receive: theTemp, a Temperature   ;
;;; Return: the converted temperature ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun getFahren(theTemp)
  (if (equal (getScale theTemp) "F")
      (car theTemp))
  (if (equal (getScale theTemp) "C")
      (/ (* (- (getDegrees theTemp) 32) 5) 9))
  (if (equal (getScale theTemp) "K")
      (- (/ (* (getDegrees theTemp) 9) 5) 459.67))
  )

(defun getCelcius(theTemp)
  (if (equal (getScale theTemp) "C")
      (getDegrees theTemp))
  (if (equal (getScale theTemp) "F")
      (/ (* (- (getDegrees theTemp) 32) 5) 9))
  (if (equal (getScale theTemp) "K")
      (-  (getDegrees theTemp) 273.15))
  )

(defun getKelvin(theTemp)
  (if (equal (getScale theTemp) "K")
      (getDegrees theTemp))
  (if (equal (getScale theTemp) "F")
      (/ (* (+ (getDegrees theTemp) 459.67) 5) 9))
  (if (equal (getScale theTemp) "C")
      (-  (getDegrees theTemp) 273.15))
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; (raise) increases myDegrees by degrees   ;
;;; param: degrees: the addend to myDegrees  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun raise (theTemp degrees)
  (setf (nth 1 theTemp) (+ (getDegrees theTemp) degrees))
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; (lower) decreases myDegrees by degrees   ;
;;; param: degrees: the subtrahend to myDegrees  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun lower (theTemp degrees)
  (setf (nth 1 theTemp) (- (getDegrees theTemp) degrees))
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; (equals) checks if two Temperature objects are equal in Degrees
;;; param: theTemp, the left hand temperature                 ;
;;;      Temperature aTemp: the right hand operand            ;
;;; return: boolean of equality operator of their degrees     ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun equals (theTemp aTemp)
  (if (equal (getScale theTemp) "F")
      ( = (getDegrees theTemp) (getFahren aTemp)))
  (if (equal (getScale theTemp) "C")
      ( = (getDegrees theTemp) (getCelcius aTemp)))
  (if (equal (getScale theTemp) "K")
      ( = (getDegrees theTemp) (getKelvin aTemp)))
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; (lessThan) checks if a temperature's degrees are less than another
;;; param: theTemp, the left hand temperature                 ;
;;;      Temperature aTemp: the right hand operand            ;
;;; return: boolean of the less than operator of their degrees
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun lessThan (theTemp aTemp)
  (if (equal (getScale theTemp) "F")
      ( < (getDegrees theTemp) (getFahren aTemp)))
  (if (equal (getScale theTemp) "C")
      ( < (getDegrees theTemp) (getCelcius aTemp)))
  (if (equal (getScale theTemp) "K")
      ( < (getDegrees theTemp) (getKelvin aTemp)))
  )
ajs94@noyce-kilby:~/CS214/projects/proj08/e-lisp$ exit

Script done on Tue 11 Apr 2017 09:17:01 PM EDT
