(declare-const X String)
; /\/modules\/(n?\d|nu)\.swf$/U
(assert (str.in.re X (re.++ (str.to.re "//modules/") (re.union (re.++ (re.opt (str.to.re "n")) (re.range "0" "9")) (str.to.re "nu")) (str.to.re ".swf/U\x0a"))))
(check-sat)
