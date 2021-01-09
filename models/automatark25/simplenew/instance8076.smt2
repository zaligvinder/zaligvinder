(declare-const X String)
; (.*\.jpe?g|.*\.JPE?G)
(assert (str.in.re X (re.++ (re.union (re.++ (re.* re.allchar) (str.to.re ".jp") (re.opt (str.to.re "e")) (str.to.re "g")) (re.++ (re.* re.allchar) (str.to.re ".JP") (re.opt (str.to.re "E")) (str.to.re "G"))) (str.to.re "\x0a"))))
(check-sat)
