(declare-const X String)
; filename=\x22Subject\x3awww\x2Eadoptim\x2Ecomreport\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in.re X (str.to.re "filename=\x22Subject:www.adoptim.comreport/bar_pl/chk.fcgi\x0a")))
; /User-Agent\x3a[^\x0d\x0a]*Java\/1\./H
(assert (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Java/1./H\x0a"))))
; ^[0-9]*(\.)?[0-9]+$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
