; I cannot seem to get this code to work from the examples
(in-package :cl-user)

(defpackage #:my-new-package
    (:nicknames #:newpack)
    (:use :cl :cl-user)
    (:export #:mad-adder))

(in-package :my-new-package)

(defvar *my-private-var* "I'm not exported from the package")

(defun mad-adder (n &rest rest)
    "An addition function for MY-NEW-PACKAGE."
(apply #'+ n rest))
