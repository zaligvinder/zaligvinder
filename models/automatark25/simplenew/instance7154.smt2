(declare-const X String)
; ^[A-Z][a-z]+(tz)?(man|berg)$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (re.opt (str.to.re "tz")) (re.union (str.to.re "man") (str.to.re "berg")) (str.to.re "\x0a"))))
(check-sat)
