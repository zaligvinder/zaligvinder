(declare-const X String)
; Toolbar\s+\x2APORT3\x2A\d+Host\x3AconfigINTERNAL\.ini
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*PORT3*") (re.+ (re.range "0" "9")) (str.to.re "Host:configINTERNAL.ini\x0a"))))
(check-sat)
