(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "000") (str.to.re "1")) (re.union (str.to.re "222") (str.to.re "3"))) (re.++ (re.+ (re.union (str.to.re "4") (str.to.re "5"))) (re.++ (re.union (re.+ (str.to.re "666")) (re.+ (str.to.re "77"))) (re.++ (re.* (re.union (str.to.re "888") (str.to.re "999"))) (re.++ (re.+ (re.union (str.to.re "aaa") (str.to.re "bbb"))) (re.++ (re.union (re.* (str.to.re "c")) (re.union (str.to.re "d") (str.to.re "ee"))) (re.++ (re.+ (re.* (str.to.re "fff"))) (re.++ (re.union (re.* (str.to.re "g")) (re.union (str.to.re "hh") (str.to.re "i"))) (re.++ (re.* (re.+ (str.to.re "j"))) (re.+ (re.* (str.to.re "kkk"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)