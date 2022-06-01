(declare-const X String)
; /\u{FF}\u{FE}\u{3F}\u{10}\u{0}\u{0}.{14}[\u{2B}x\u{2F}a-z0-9]{20}/smi
(assert (str.in_re X (re.++ (str.to_re "/\u{ff}\u{fe}?\u{10}\u{0}\u{0}") ((_ re.loop 14 14) re.allchar) ((_ re.loop 20 20) (re.union (str.to_re "+") (str.to_re "x") (str.to_re "/") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/smi\u{a}"))))
; Spy\s+toolbar_domain_redirect
(assert (not (str.in_re X (re.++ (str.to_re "Spy") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "toolbar_domain_redirect\u{a}")))))
(check-sat)
