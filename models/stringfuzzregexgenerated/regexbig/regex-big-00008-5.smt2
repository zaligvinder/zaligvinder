(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "000") (str.to.re "11"))) (re.++ (re.+ (re.* (str.to.re "2"))) (re.++ (re.union (re.+ (str.to.re "333")) (re.+ (str.to.re "444"))) (re.++ (re.* (re.union (str.to.re "55") (str.to.re "666"))) (re.++ (re.+ (re.* (str.to.re "7"))) (re.++ (re.union (re.union (str.to.re "88") (str.to.re "9")) (re.+ (str.to.re "aa"))) (re.++ (re.union (re.+ (str.to.re "bbb")) (re.union (str.to.re "ccc") (str.to.re "dd"))) (re.+ (re.union (str.to.re "eee") (str.to.re "f"))))))))))))
(check-sat)