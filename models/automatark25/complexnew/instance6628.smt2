(declare-const X String)
; (^\d*\.\d{2}$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))))
; freeIPaddrsRunner\+The\+password\+is\x3A
(assert (str.in.re X (str.to.re "freeIPaddrsRunner+The+password+is:\x0a")))
(check-sat)
