(declare-const X String)
; /\/crypt_1_sell\d\d-\d\d.exe$/Ui
(assert (str.in_re X (re.++ (str.to_re "//crypt_1_sell") (re.range "0" "9") (re.range "0" "9") (str.to_re "-") (re.range "0" "9") (re.range "0" "9") re.allchar (str.to_re "exe/Ui\u{a}"))))
; Referer\u{3A}\s+www\u{2e}proventactics\u{2e}com
(assert (not (str.in_re X (re.++ (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.proventactics.com\u{a}")))))
(check-sat)
