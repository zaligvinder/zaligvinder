(declare-const X String)
; \u{2F}bar_pl\u{2F}shdoclc\.fcgi\w+Referer\u{3A}\d+\u{2F}bar_pl\u{2F}shdoclc\.fcgiareHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "/bar_pl/shdoclc.fcgi") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Referer:") (re.+ (re.range "0" "9")) (str.to_re "/bar_pl/shdoclc.fcgiareHost:\u{a}"))))
(check-sat)
