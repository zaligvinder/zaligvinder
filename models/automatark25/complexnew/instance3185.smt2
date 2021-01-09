(declare-const X String)
; SAccsearchresltOnline100013Agentsvr\x5E\x5EMerlin
(assert (str.in.re X (str.to.re "SAccsearchresltOnline100013Agentsvr^^Merlin\x13\x0a")))
; (\+1 )?\d{3} \d{3} \d{4}
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+1 ")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ((0?[13578]|10|12)(-|\/)((0[0-9])|([12])([0-9]?)|(3[01]?))(-|\/)((\d{4})|(\d{2}))|(0?[2469]|11)(-|\/)((0[0-9])|([12])([0-9]?)|(3[0]?))(-|\/)((\d{4}|\d{2})))
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.union (str.to.re "1") (str.to.re "3") (str.to.re "5") (str.to.re "7") (str.to.re "8"))) (str.to.re "10") (str.to.re "12")) (re.union (str.to.re "-") (str.to.re "/")) (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.opt (re.range "0" "9"))) (re.++ (str.to.re "3") (re.opt (re.union (str.to.re "0") (str.to.re "1"))))) (re.union (str.to.re "-") (str.to.re "/")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.union (str.to.re "2") (str.to.re "4") (str.to.re "6") (str.to.re "9"))) (str.to.re "11")) (re.union (str.to.re "-") (str.to.re "/")) (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.opt (re.range "0" "9"))) (re.++ (str.to.re "3") (re.opt (str.to.re "0")))) (re.union (str.to.re "-") (str.to.re "/")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))))) (str.to.re "\x0a"))))
; User-Agent\x3Auuid=aadserverfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in.re X (str.to.re "User-Agent:uuid=aadserverfowclxccdxn/uxwn.ddy\x0a"))))
(check-sat)
