(declare-const X String)
; httphostHost\u{3a}Agent\u{22}
(assert (str.in_re X (str.to_re "httphostHost:Agent\u{22}\u{a}")))
; ^((.){1,}(\d){1,}(.){0,})$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ re.allchar) (re.+ (re.range "0" "9")) (re.* re.allchar))))
(check-sat)
