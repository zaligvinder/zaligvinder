(declare-const X String)
; (W(5|6)[D]?\-\d{9})|(W1\-\d{9}(\-\d{2})?)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "W") (re.union (str.to_re "5") (str.to_re "6")) (re.opt (str.to_re "D")) (str.to_re "-") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}W1-") ((_ re.loop 9 9) (re.range "0" "9")) (re.opt (re.++ (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")))))))))
(check-sat)
