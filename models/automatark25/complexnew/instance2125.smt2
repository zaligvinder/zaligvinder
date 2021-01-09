(declare-const X String)
; securityon\x3AHost\x3ARedirector\x22ServerHost\x3A
(assert (not (str.in.re X (str.to.re "securityon:Host:Redirector\x22ServerHost:\x0a"))))
; \d{2}.?\d{3}.?\d{3}/?\d{4}-?\d{2}
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "/")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ewal/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wal/i\x0a")))))
(check-sat)
