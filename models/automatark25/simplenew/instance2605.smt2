(declare-const X String)
; ref\u{3D}\u{25}user\u{5F}id\d+\u{2F}bar_pl\u{2F}chk\.fcgi
(assert (str.in_re X (re.++ (str.to_re "ref=%user_id") (re.+ (re.range "0" "9")) (str.to_re "/bar_pl/chk.fcgi\u{a}"))))
(check-sat)
