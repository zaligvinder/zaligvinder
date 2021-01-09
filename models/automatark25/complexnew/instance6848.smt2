(declare-const X String)
; ^\b\d{2,3}-*\d{7}\b$
(assert (str.in.re X (re.++ ((_ re.loop 2 3) (re.range "0" "9")) (re.* (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; [+]?[ ]?\d{1,3}[ ]?\d{1,3}[- ]?\d{4}[- ]?\d{4}
(assert (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.opt (str.to.re " ")) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; tv\x2E180solutions\x2EcomGirlFriendHost\x3A
(assert (str.in.re X (str.to.re "tv.180solutions.comGirlFriendHost:\x0a")))
(check-sat)
