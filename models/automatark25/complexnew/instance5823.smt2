(declare-const X String)
; ^(/w|/W|[^<>+?$%{}&])+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "/w") (str.to.re "/W") (str.to.re "<") (str.to.re ">") (str.to.re "+") (str.to.re "?") (str.to.re "$") (str.to.re "%") (str.to.re "{") (str.to.re "}") (str.to.re "&"))) (str.to.re "\x0a")))))
; HWPE[^\n\r]*Basic.*LOGsearches\x2Eworldtostart\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "HWPE") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Basic") (re.* re.allchar) (str.to.re "LOGsearches.worldtostart.com\x0a")))))
(check-sat)
