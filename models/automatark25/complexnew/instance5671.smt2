(declare-const X String)
; Host\x3a\dOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "OVNUsertooffers.bullseye-network.com\x0a"))))
; Referer\x3Adialupvpn\x5fpwdwww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "Referer:dialupvpn_pwdwww.searchreslt.com\x0a"))))
; Daemonwww\x2Elookquick\x2EcomHost\x3A
(assert (not (str.in.re X (str.to.re "Daemonwww.lookquick.comHost:\x0a"))))
; ^([A-Za-z]\d[A-Za-z][-]?\d[A-Za-z]\d)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (str.to.re "-")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9")))))
(check-sat)
