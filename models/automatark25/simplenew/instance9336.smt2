(declare-const X String)
; ^((6011)((-|\s)?[0-9]{4}){3})$
(assert (str.in_re X (re.++ (str.to_re "\u{a}6011") ((_ re.loop 3 3) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")))))))
(check-sat)
