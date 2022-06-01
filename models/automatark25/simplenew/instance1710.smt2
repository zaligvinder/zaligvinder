(declare-const X String)
; \u{5D}\u{25}20\u{5B}Port_\d+TM_SEARCH3engineto=\u{2F}ezsb\s\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "]%20[Port_") (re.+ (re.range "0" "9")) (str.to_re "TM_SEARCH3engineto=/ezsb") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re ":\u{a}")))))
(check-sat)
