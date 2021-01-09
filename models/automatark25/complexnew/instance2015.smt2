(declare-const X String)
; from\x3A\dwww\.thecommunicator\.net
(assert (not (str.in.re X (re.++ (str.to.re "from:") (re.range "0" "9") (str.to.re "www.thecommunicator.net\x0a")))))
; filename=\x22Subject\x3awww\x2Eadoptim\x2Ecomreport\x2Fbar_pl\x2Fchk\.fcgi
(assert (not (str.in.re X (str.to.re "filename=\x22Subject:www.adoptim.comreport/bar_pl/chk.fcgi\x0a"))))
; ^(^N[BLSTU]$)|(^[AMN]B$)|(^[BQ]C$)|(^ON$)|(^PE$)|(^SK$)$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "N") (re.union (str.to.re "B") (str.to.re "L") (str.to.re "S") (str.to.re "T") (str.to.re "U"))) (re.++ (re.union (str.to.re "A") (str.to.re "M") (str.to.re "N")) (str.to.re "B")) (re.++ (re.union (str.to.re "B") (str.to.re "Q")) (str.to.re "C")) (str.to.re "ON") (str.to.re "PE") (str.to.re "SK\x0a")))))
(check-sat)
