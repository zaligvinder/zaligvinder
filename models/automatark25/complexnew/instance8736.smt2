(declare-const X String)
; ref\u{3D}\u{25}user\u{5F}id\d+\u{2F}bar_pl\u{2F}chk\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "ref=%user_id") (re.+ (re.range "0" "9")) (str.to_re "/bar_pl/chk.fcgi\u{a}")))))
; /filename=[^\n]*\u{2e}fon/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".fon/i\u{a}")))))
(check-sat)
