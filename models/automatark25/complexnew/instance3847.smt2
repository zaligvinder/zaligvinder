(declare-const X String)
; corep\u{2E}dmcast\u{2E}comOwner\u{3A}
(assert (not (str.in_re X (str.to_re "corep.dmcast.comOwner:\u{a}"))))
; Logtraffbest\u{2E}bizAdToolsLogged
(assert (not (str.in_re X (str.to_re "Logtraffbest.bizAdToolsLogged\u{a}"))))
; Fictional[^\n\r]*v\u{3B}[^\n\r]*\u{22}Stealth\d+moreKontikiHost\u{3a}AcmeEvilFTPHost\u{3A}TOOLBARSupremePort\u{2E}
(assert (str.in_re X (re.++ (str.to_re "Fictional") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "v;") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{22}Stealth") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:AcmeEvilFTPHost:TOOLBARSupremePort.\u{a}"))))
; aboutKeyloggeras\u{2E}starware\u{2E}comProtoHost\u{3a}\.asp\?brand=
(assert (str.in_re X (str.to_re "aboutKeyloggeras.starware.comProtoHost:.asp?brand=\u{a}")))
; Host\u{3A}\w+wwwfromToolbartheServer\u{3A}www\u{2E}searchreslt\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "wwwfromToolbartheServer:www.searchreslt.com\u{a}")))))
(check-sat)
