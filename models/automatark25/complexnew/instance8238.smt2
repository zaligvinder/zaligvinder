(declare-const X String)
; welcome\s+Host\u{3A}\s+ThistoIpHost\u{3A}badurl\u{2E}grandstreetinteractive\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "welcome") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ThistoIpHost:badurl.grandstreetinteractive.com\u{a}")))))
; (?s)/\*.*\*/
(assert (str.in_re X (re.++ (str.to_re "/*") (re.* re.allchar) (str.to_re "*/\u{a}"))))
; /filename=[^\n]*\u{2e}fon/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".fon/i\u{a}")))))
; Fictional[^\n\r]*v\u{3B}[^\n\r]*\u{22}Stealth\d+moreKontikiHost\u{3a}AcmeEvilFTPHost\u{3A}TOOLBARSupremePort\u{2E}
(assert (str.in_re X (re.++ (str.to_re "Fictional") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "v;") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{22}Stealth") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:AcmeEvilFTPHost:TOOLBARSupremePort.\u{a}"))))
(check-sat)
