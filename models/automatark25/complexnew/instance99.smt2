(declare-const X String)
; www\u{2E}sogou\u{2E}comUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "www.sogou.comUser-Agent:\u{a}"))))
; ^((0[1-9])|(1[0-2]))\/*((2011)|(20[1-9][1-9]))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.* (str.to_re "/")) (re.union (str.to_re "2011") (re.++ (str.to_re "20") (re.range "1" "9") (re.range "1" "9"))) (str.to_re "\u{a}")))))
(check-sat)
