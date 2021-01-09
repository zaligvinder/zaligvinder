(declare-const X String)
; Fictional[^\n\r]*v\x3B[^\n\r]*\x22Stealth\d+moreKontikiHost\x3aAcmeEvilFTPHost\x3ATOOLBARSupremePort\x2E
(assert (not (str.in.re X (re.++ (str.to.re "Fictional") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "v;") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "\x22Stealth") (re.+ (re.range "0" "9")) (str.to.re "moreKontikiHost:AcmeEvilFTPHost:TOOLBARSupremePort.\x0a")))))
; trustyfiles\x2EcomBlade\x23\x23\x23\x23\.smx\?
(assert (str.in.re X (str.to.re "trustyfiles.comBlade####.smx?\x0a")))
(check-sat)
