(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "000")) (re.+ (str.to.re "1"))) (re.++ (re.+ (re.+ (str.to.re "2"))) (re.++ (re.+ (re.union (str.to.re "333") (str.to.re "44"))) (re.++ (re.+ (re.+ (str.to.re "5"))) (re.++ (re.+ (re.* (str.to.re "666"))) (re.++ (re.* (re.+ (str.to.re "7"))) (re.++ (re.+ (re.* (str.to.re "8"))) (re.++ (re.+ (re.union (str.to.re "99") (str.to.re "a"))) (re.++ (re.* (re.union (str.to.re "bb") (str.to.re "ccc"))) (re.+ (re.* (str.to.re "dd"))))))))))))))
(check-sat)