(declare-const X String)
; TOOLBAR\s+dist\u{2E}atlas\u{2D}ia\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "TOOLBAR") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}"))))
; ^\d+\u{20}*([pP][xXtT])?$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.* (str.to_re " ")) (re.opt (re.++ (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "x") (str.to_re "X") (str.to_re "t") (str.to_re "T")))) (str.to_re "\u{a}")))))
; \u{7D}\u{7B}Trojan\u{3A}\w+by\d+to\w+dddlogin\u{2E}dudu\u{2E}comSurveillanceIPOblivion
(assert (not (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "by") (re.+ (re.range "0" "9")) (str.to_re "to") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "dddlogin.dudu.comSurveillance\u{13}IPOblivion\u{a}")))))
; Fictional[^\n\r]*v\u{3B}[^\n\r]*\u{22}Stealth\d+moreKontikiHost\u{3a}AcmeEvilFTPHost\u{3A}TOOLBARSupremePort\u{2E}
(assert (str.in_re X (re.++ (str.to_re "Fictional") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "v;") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{22}Stealth") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:AcmeEvilFTPHost:TOOLBARSupremePort.\u{a}"))))
(check-sat)
