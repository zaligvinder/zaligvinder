(declare-const X String)
; Pass-On\w+c\.goclick\.comletter
(assert (str.in.re X (re.++ (str.to.re "Pass-On") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "c.goclick.comletter\x0a"))))
; ^\$?\d+(\.(\d{2}))?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
