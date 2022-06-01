(declare-const X String)
; Authorization\u{3a}\d+lnzzlnbk\u{2f}pkrm\.fin
(assert (str.in_re X (re.++ (str.to_re "Authorization:") (re.+ (re.range "0" "9")) (str.to_re "lnzzlnbk/pkrm.fin\u{a}"))))
(check-sat)
