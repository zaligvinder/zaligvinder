(declare-const X String)
; Apofis.*Port\x2E\s+\x2FNFO\x2CRegistered
(assert (str.in.re X (re.++ (str.to.re "Apofis") (re.* re.allchar) (str.to.re "Port.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/NFO,Registered\x0a"))))
(check-sat)
