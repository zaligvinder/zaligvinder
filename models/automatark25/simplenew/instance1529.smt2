(declare-const X String)
; to\d+User-Agent\u{3A}Filtered
(assert (str.in_re X (re.++ (str.to_re "to") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:Filtered\u{a}"))))
(check-sat)
