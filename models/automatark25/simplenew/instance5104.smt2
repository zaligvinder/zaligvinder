(declare-const X String)
; ProAgent\d+X-Mailer\u{3A}backtrust\u{2E}comReferer\u{3a}Supreme
(assert (not (str.in_re X (re.++ (str.to_re "ProAgent") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}backtrust.comReferer:Supreme\u{a}")))))
(check-sat)
