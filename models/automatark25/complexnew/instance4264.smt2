(declare-const X String)
; /([etDZhns8dz]{1,3}k){3}[etDZhns8dz]{1,3}f[etDZhns8dz]{16}A/
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.union (str.to.re "e") (str.to.re "t") (str.to.re "D") (str.to.re "Z") (str.to.re "h") (str.to.re "n") (str.to.re "s") (str.to.re "8") (str.to.re "d") (str.to.re "z"))) (str.to.re "k"))) ((_ re.loop 1 3) (re.union (str.to.re "e") (str.to.re "t") (str.to.re "D") (str.to.re "Z") (str.to.re "h") (str.to.re "n") (str.to.re "s") (str.to.re "8") (str.to.re "d") (str.to.re "z"))) (str.to.re "f") ((_ re.loop 16 16) (re.union (str.to.re "e") (str.to.re "t") (str.to.re "D") (str.to.re "Z") (str.to.re "h") (str.to.re "n") (str.to.re "s") (str.to.re "8") (str.to.re "d") (str.to.re "z"))) (str.to.re "A/\x0a")))))
; NavExcel\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "NavExcel") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "dist.atlas-ia.com\x0a")))))
; \.com/(\d+)$
(assert (str.in.re X (re.++ (str.to.re ".com/") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; www\x2Ewebcruiser\x2Eccgot
(assert (not (str.in.re X (str.to.re "www.webcruiser.ccgot\x0a"))))
; Minutes\s+\x2Fcgi\x2Flogurl\.cgi\s+e2give\.com
(assert (not (str.in.re X (re.++ (str.to.re "Minutes") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cgi/logurl.cgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "e2give.com\x0a")))))
(check-sat)
