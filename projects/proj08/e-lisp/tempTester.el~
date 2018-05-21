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


