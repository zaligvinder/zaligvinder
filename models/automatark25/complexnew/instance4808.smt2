(declare-const X String)
; ^\$?\d{1,2}\,\d{3}?\,\d{3}?(\.(\d{2}))$|^\$?\d{1,3}?\,\d{3}?(\.(\d{2}))$|^\$?\d{1,3}?(\.(\d{2}))$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "$")) ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "\x0a.") ((_ re.loop 2 2) (re.range "0" "9")))))))
; portSpediaYourtraffbest\x2EbizUser-Agent\x3ACSmtpMonsterixqshv\x2fqzccsHost\x3A
(assert (str.in.re X (str.to.re "portSpediaYourtraffbest.bizUser-Agent:CSmtpMonsterixqshv/qzccsHost:\x0a")))
; ^L[a-zA-Z0-9]{26,33}$
(assert (str.in.re X (re.++ (str.to.re "L") ((_ re.loop 26 33) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
