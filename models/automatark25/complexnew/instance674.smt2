(declare-const X String)
; ProAgent\d+X-Mailer\u{3A}backtrust\u{2E}comReferer\u{3a}Supreme
(assert (not (str.in_re X (re.++ (str.to_re "ProAgent") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}backtrust.comReferer:Supreme\u{a}")))))
; ^([^\s]){5,12}$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 12) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)
