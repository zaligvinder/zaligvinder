(declare-const X String)
; corep\x2Edmcast\x2EcomOwner\x3A
(assert (not (str.in.re X (str.to.re "corep.dmcast.comOwner:\x0a"))))
; Logtraffbest\x2EbizAdToolsLogged
(assert (not (str.in.re X (str.to.re "Logtraffbest.bizAdToolsLogged\x0a"))))
; Fictional[^\n\r]*v\x3B[^\n\r]*\x22Stealth\d+moreKontikiHost\x3aAcmeEvilFTPHost\x3ATOOLBARSupremePort\x2E
(assert (str.in.re X (re.++ (str.to.re "Fictional") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "v;") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "\x22Stealth") (re.+ (re.range "0" "9")) (str.to.re "moreKontikiHost:AcmeEvilFTPHost:TOOLBARSupremePort.\x0a"))))
; aboutKeyloggeras\x2Estarware\x2EcomProtoHost\x3a\.asp\?brand=
(assert (str.in.re X (str.to.re "aboutKeyloggeras.starware.comProtoHost:.asp?brand=\x0a")))
; Host\x3A\w+wwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "wwwfromToolbartheServer:www.searchreslt.com\x0a")))))
(check-sat)
