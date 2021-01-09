(declare-const X String)
; /^\/[a-f0-9]{32}\.eot$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".eot/U\x0a"))))
; ^-?\d*(\.\d+)?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
