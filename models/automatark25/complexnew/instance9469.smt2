(declare-const X String)
; HWPE[^\n\r]*Basic.*LOGsearches\x2Eworldtostart\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "HWPE") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Basic") (re.* re.allchar) (str.to.re "LOGsearches.worldtostart.com\x0a"))))
; ^-?[0-9]\d{0,8}(\.\d{1,4})
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.range "0" "9") ((_ re.loop 0 8) (re.range "0" "9")) (str.to.re "\x0a.") ((_ re.loop 1 4) (re.range "0" "9")))))
(check-sat)
