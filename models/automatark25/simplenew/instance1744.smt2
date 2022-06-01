(declare-const X String)
; cojud\u{2E}dmcast\u{2E}com\sApofis\w+Referer\u{3A}www\u{2E}mirarsearch\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "cojud.dmcast.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Apofis") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Referer:www.mirarsearch.com\u{a}"))))
(check-sat)
