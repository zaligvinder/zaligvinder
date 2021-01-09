(declare-const X String)
; HWPE[^\n\r]*Basic.*LOGsearches\x2Eworldtostart\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "HWPE") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Basic") (re.* re.allchar) (str.to.re "LOGsearches.worldtostart.com\x0a"))))
(check-sat)
