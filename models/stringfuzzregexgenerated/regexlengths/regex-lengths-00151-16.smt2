(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "00")) (re.+ (str.to.re "111"))) (re.++ (re.union (re.+ (str.to.re "222")) (re.+ (str.to.re "3"))) (re.++ (re.union (re.* (str.to.re "444")) (re.* (str.to.re "55"))) (re.++ (re.+ (re.* (str.to.re "66"))) (re.++ (re.union (re.+ (str.to.re "7")) (re.* (str.to.re "88"))) (re.++ (re.+ (re.union (str.to.re "99") (str.to.re "aaa"))) (re.++ (re.union (re.union (str.to.re "bb") (str.to.re "cc")) (re.union (str.to.re "d") (str.to.re "eee"))) (re.++ (re.+ (re.+ (str.to.re "fff"))) (re.++ (re.* (re.* (str.to.re "g"))) (re.* (re.* (str.to.re "hhh"))))))))))))))
(assert (<= 151 (str.len var0)))
(check-sat)