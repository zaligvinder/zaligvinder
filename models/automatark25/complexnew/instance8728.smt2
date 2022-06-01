(declare-const X String)
; /\/flupdate\/\d\.html/iU
(assert (str.in_re X (re.++ (str.to_re "//flupdate/") (re.range "0" "9") (str.to_re ".html/iU\u{a}"))))
; ^(010|011|012)[0-9]{7}$
(assert (str.in_re X (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}01") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))))
; \+353\(0\)\s\d\s\d{3}\s\d{4}
(assert (not (str.in_re X (re.++ (str.to_re "+353(0)") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.range "0" "9") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
