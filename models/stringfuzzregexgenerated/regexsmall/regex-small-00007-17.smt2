(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "0"))) (re.++ (re.* (re.+ (str.to.re "111"))) (re.++ (re.* (re.union (str.to.re "222") (str.to.re "33"))) (re.++ (re.union (re.union (str.to.re "444") (str.to.re "555")) (re.+ (str.to.re "666"))) (re.++ (re.* (re.union (str.to.re "7") (str.to.re "8"))) (re.++ (re.union (re.+ (str.to.re "999")) (re.* (str.to.re "aa"))) (re.+ (re.union (str.to.re "bb") (str.to.re "cc")))))))))))
(check-sat)