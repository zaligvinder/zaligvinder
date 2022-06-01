(declare-const X String)
; ^\$?\d{1,2}\,\d{3}?\,\d{3}?(\.(\d{2}))$|^\$?\d{1,3}?\,\d{3}?(\.(\d{2}))$|^\$?\d{1,3}?(\.(\d{2}))$
(assert (not (str.in_re X (re.union (re.++ (re.opt (str.to_re "$")) ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "\u{a}.") ((_ re.loop 2 2) (re.range "0" "9")))))))
; portSpediaYourtraffbest\u{2E}bizUser-Agent\u{3A}CSmtpMonsterixqshv\u{2f}qzccsHost\u{3A}
(assert (str.in_re X (str.to_re "portSpediaYourtraffbest.bizUser-Agent:CSmtpMonsterixqshv/qzccsHost:\u{a}")))
; ^L[a-zA-Z0-9]{26,33}$
(assert (str.in_re X (re.++ (str.to_re "L") ((_ re.loop 26 33) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)
