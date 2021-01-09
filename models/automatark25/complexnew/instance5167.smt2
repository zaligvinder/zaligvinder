(declare-const X String)
; /^\/lists\/\d{20}$/U
(assert (str.in.re X (re.++ (str.to.re "//lists/") ((_ re.loop 20 20) (re.range "0" "9")) (str.to.re "/U\x0a"))))
; ^(#){1}([a-fA-F0-9]){6}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "#")) ((_ re.loop 6 6) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\x0a")))))
; filename=\x22Subject\x3awww\x2Eadoptim\x2Ecomreport\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in.re X (str.to.re "filename=\x22Subject:www.adoptim.comreport/bar_pl/chk.fcgi\x0a")))
(check-sat)
