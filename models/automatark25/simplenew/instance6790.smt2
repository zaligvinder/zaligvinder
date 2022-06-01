(declare-const X String)
; \d[\d\,\.]+
(assert (str.in_re X (re.++ (re.range "0" "9") (re.+ (re.union (re.range "0" "9") (str.to_re ",") (str.to_re "."))) (str.to_re "\u{a}"))))
(check-sat)
