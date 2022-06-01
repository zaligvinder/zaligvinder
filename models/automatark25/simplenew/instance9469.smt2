(declare-const X String)
; IDENTIFY.*\u{2F}ezsb\d+X-Mailer\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "IDENTIFY") (re.* re.allchar) (str.to_re "/ezsb") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}\u{a}")))))
(check-sat)
