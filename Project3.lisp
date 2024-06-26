

;; Return T if item is a member of set.

;; Return NIL if item is not a member of set.

;; The type of set is list.

;; Examples:
;;  (set-member '(1 2) 1) => T
;;  (set-member '(1 2) 3) =>  NIL

(defun set-member (set item)
  "Check if item is a member of set."
  (cond
    ((null set) nil)                 
    ((equal (car set) item) t)       
    (t (set-member (cdr set) item))))

;;Test set-member
(defun set-member-test ()
  (if (set-member '(1 2 3) 1)
    (format t "Test passed: (set-member '(1 2 3) 1) => T~%")
    (format t "Test failed: (set-member '(1 2 3) 1) => T~%")))

;; Load tests with C-c C-k (don't know if this'll work)

;;Run tests
(set-member-test)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Return the union of set-1 and set-2.

;; The result should contain no duplicates.

;; Assume set-1 contains no duplicates and set-2 contains no duplicates.

;; Examples:

;;   (set-union '(1 2) '(2 4)) => '(1 2 4)

;;---->(defun set-union (set-1 set-2)

  ;;Your implementation go here

;;---->)

 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Return the intersection of set-1 and set-2.

;; The result should contain no duplicates.

;; Assume set-1 contains no duplicates and set-2 contains no duplicates.

;; Examples:

;;   (set-intersection '(1 2) '(2 4)) => '(2)

;;---->(defun set-intersection (set-1 set-2)

  ;;Your implementation go here

;;---->)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Return the difference of set-1 and set-2.

;; The result should contain no duplicates.

;; Assume set-1 contains no duplicates and set-2 contains no duplicates.

;;

;; Examples:

;;   (set-diff '(1 2) '(2 4)) => '(1)

(defun set-diff (set-1 set-2)
  "Check the difference between two sets"
  (cond ((null set-1) nil)
    ((member (car set-1) set-2) (set-difference (cdr set-1) set-2))
    (t (cons (car set-1) (set-difference (cdr set-1) set-2)))))

;;Test set-diff
(defun set-diff-test ()
  (format t "Test 1: ")
  (let ((result (set-diff '(1 2 3 4) '(3 4 5))))
    (if (null result)
      (format t "No difference found. ~%")
      (format t "Difference found: ~a~%" result)))

  (format t "Test 2: ")
  (let ((result (set-diff '(1 2 3) '(1 2 3))))
    (if (null result)
      (format t "No difference found. ~%")
      (format t "Difference found: ~a~%" result)))

  (format t "Test 3: ")
  (let ((result (set-diff '() '(1 2 3))))
    (if (null result)
      (format t "No difference found. ~%")
      (format t "Difference found: ~a~%" result)))

  (format t "Test 4: ")
  (let ((result (set-diff '(1 2 3) '())))
    (if (null result)
      (format t "No difference found. ~%")
      (format t "Difference found: ~a~%" result)))
  
  (format t "Test 5: ")
  (let ((result (set-diff '(1 1 2 2 3 3) '(2 3 4))))
    (if (null result)
      (format t "No difference found. ~%")
      (format t "Difference found: ~a~%" result)))
  
  (format t "Test 6: ")
  (let ((result (set-diff '(a b c) '(c d e))))
    (if (null result)
      (format t "No difference found. ~%")
      (format t "Difference found: ~a~%" result)))
  
  (format t "Test 4: ")
  (let ((result (set-diff '(1 2 a b) '(b c 1))))
    (if (null result)
      (format t "No difference found. ~%")
      (format t "Difference found: ~a~%" result))))

;;Run Tests
(set-diff-test)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Return the exclusive or of a and b

;;

;; Examples:

;;  (boolean-xor t nil) => t

;;  (boolean-xor nil nil) => nil

(defun boolean-xor (a b)
  "Compute the XOR of two boolean values 'a' and 'b'."
  (cond ((and a b) nil)    ;Both true => false
    ((or a b) t)           ;Either true => true
    (t nil)))              ;Both false => false

;;Test boolean-xor
(defun boolean-xor-test ()
  (format t "Test with both inputs true:")
  (let ((result (boolean-xor t t)))
    (if result
      (format t "(boolean-xor t t) => t~%")
      (format t "(boolean-xor t t) => nil~%")))

  (format t "Test with first input 'true' & second input 'nil':")
  (let ((result (boolean-xor t nil)))
    (if result
      (format t "(boolean-xor t nil) => t~%")
      (format t "(boolean-xor t nil) => nil~%")))
  
  (format t "Test with first input 'nil' & second input 'true':")
  (let ((result (boolean-xor nil t)))
    (if result
      (format t "(boolean-xor nil t) => t~%")
      (format t "(boolean-xor nil t) => nil~%")))

  (format t "Test with both inputs false:")
  (let ((result (boolean-xor nil nil)))
    (if result
      (format t "(boolean-xor nil nil) => t~%")
      (format t "(boolean-xor nil nil) => nil~&"))))
  
;;Run tests
(boolean-xor-test)
  



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Return the implication of a and b

;;

;; Examples:

;;  (boolean-implies t nil) => nil

;;  (boolean-implies nil nil) => t

(defun boolean-implies (a b)

;;<Your implementation go here >

)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Return the bi-implication (if and only if) of a and b

;;

;; Examples:

;;  (boolean-iff t nil) => nil

;;  (boolean-iff nil nil) => t

(defun boolean-iff (a b)

;;<Your implementation go here >

)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Evaluate a boolean expression.

;; Handle NOT, AND, OR, XOR, IMPLIES, and IFF.

;;

;; Examples:

;;  (boolean-eval '(and t nil)) => nil

;;  (boolean-eval '(and t (or nil t)) => t

(defun boolean-eval (exp)

;;<Your implementation go here >

)
