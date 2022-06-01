(declare-const X String)
; X-Mailer\u{3a}User-Agent\u{3A}
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}User-Agent:\u{a}")))
; ^[0-9](\.[0-9]+)?$
(assert (str.in_re X (re.++ (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
