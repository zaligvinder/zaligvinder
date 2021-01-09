(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "00") (str.to.re "111"))) (re.++ (re.* (re.+ (str.to.re "2"))) (re.++ (re.* (re.union (str.to.re "333") (str.to.re "444"))) (re.++ (re.* (re.* (str.to.re "55"))) (re.++ (re.union (re.union (str.to.re "66") (str.to.re "777")) (re.union (str.to.re "888") (str.to.re "9"))) (re.++ (re.union (re.union (str.to.re "a") (str.to.re "bb")) (re.+ (str.to.re "c"))) (re.++ (re.+ (re.+ (str.to.re "ddd"))) (re.++ (re.union (re.+ (str.to.re "ee")) (re.* (str.to.re "fff"))) (re.++ (re.union (re.union (str.to.re "g") (str.to.re "hhh")) (re.* (str.to.re "iii"))) (re.+ (re.++ (str.to.re "j") (str.to.re "k"))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
