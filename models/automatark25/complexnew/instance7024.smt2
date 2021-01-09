(declare-const X String)
; DA\dwww\x2Ee-finder\x2Ecc.*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "DA") (re.range "0" "9") (str.to.re "www.e-finder.cc") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
; Host\x3A\s+jspIDENTIFYserverHOST\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "jspIDENTIFYserverHOST:\x0a")))))
(check-sat)
