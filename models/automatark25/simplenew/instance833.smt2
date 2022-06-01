(declare-const X String)
; SecureNet.*\u{2F}searchfast\u{2F}
(assert (not (str.in_re X (re.++ (str.to_re "SecureNet") (re.* re.allchar) (str.to_re "/searchfast/\u{a}")))))
(check-sat)
