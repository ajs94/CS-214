;;; rectangle_area.el computes the area of a rectangle. 
;;;                                                                     
;;; Input: The width and height of the rectangle.                               
;;; Precondition: The width and height are positive numbers.                    
;;; Output: The area of the rectangle.                                     
;;; 
;;; Completed by: Aaron Santucci ajs94
;;; Date: February 6, 2017
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                   

;;; function rectangleArea computes a rectangle's area, given its width and height.     
;;; Parameters: w, a number; h, a number                                             
;;; Precondition: w >= 0; h >= 0                                               
;;; Returns: the area of the rectangle w * h.                   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                  
(defun rectangleArea (width height)
  "Compute the area of a rectangle, passed its width and height."           
  (* width height))        

(defun rectangle_area(w h)
 "Compute the area of a rectangle, given its width and height interactively."
  (defvar w)
  (defvar h)
  (princ "Enter a rectangle's width: ")        
  (setq w (read))      
  (princ "Enter a rectangle's height: ")        
  (setq h (read))
  (setq area (rectangleArea w h))
  (message "The rectangle's area is %f." area))
