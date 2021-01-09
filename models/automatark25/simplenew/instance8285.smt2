(declare-const X String)
; (W(5|6)[D]?\-\d{9})|(W1\-\d{9}(\-\d{2})?)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "W") (re.union (str.to.re "5") (str.to.re "6")) (re.opt (str.to.re "D")) (str.to.re "-") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to.re "\x0aW1-") ((_ re.loop 9 9) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))))))))
(check-sat)
