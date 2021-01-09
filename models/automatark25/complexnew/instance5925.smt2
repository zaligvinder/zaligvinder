(declare-const X String)
; ^[1-9][0-9]{0,2}$
(assert (not (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[$]?[0-9]*(\.)?[0-9]?[0-9]?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to.re "\x0a"))))
; [\\s+,]
(assert (not (str.in.re X (re.++ (re.union (str.to.re "\x5c") (str.to.re "s") (str.to.re "+") (str.to.re ",")) (str.to.re "\x0a")))))
(check-sat)
