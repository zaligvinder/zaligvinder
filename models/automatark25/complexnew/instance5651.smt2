(declare-const X String)
; Host\x3aSubject\x3AClientnamedFrom\x3A
(assert (str.in.re X (str.to.re "Host:Subject:ClientnamedFrom:\x0a")))
; User-Agent\x3AreadyHost\x3AHost\x3ASubject\x3Awininetproducts
(assert (str.in.re X (str.to.re "User-Agent:readyHost:Host:Subject:wininetproducts\x0a")))
; filename=\x22Subject\x3awww\x2Eadoptim\x2Ecomreport\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in.re X (str.to.re "filename=\x22Subject:www.adoptim.comreport/bar_pl/chk.fcgi\x0a")))
(check-sat)
