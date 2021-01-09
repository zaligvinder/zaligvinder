(declare-const X String)
; Last.*?(\d+.?\d*)
(assert (str.in.re X (re.++ (str.to.re "Last") (re.* re.allchar) (str.to.re "\x0a") (re.+ (re.range "0" "9")) (re.opt re.allchar) (re.* (re.range "0" "9")))))
(check-sat)
