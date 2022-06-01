(declare-const X String)
; hjhgquqssq\u{2f}pjm[^\n\r]*User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "hjhgquqssq/pjm") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}")))))
; ^((18[5-9][0-9])|((19|20)[0-9]{2})|(2100))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "18") (re.range "5" "9") (re.range "0" "9")) (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re "2100")) (str.to_re "\u{a}")))))
(check-sat)
