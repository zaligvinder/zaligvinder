(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "000"))) (re.++ (re.union (re.union (str.to.re "111") (str.to.re "22")) (re.+ (str.to.re "333"))) (re.++ (re.* (re.* (str.to.re "44"))) (re.++ (re.* (re.union (str.to.re "5") (str.to.re "666"))) (re.++ (re.* (re.union (str.to.re "7") (str.to.re "88"))) (re.++ (re.union (re.+ (str.to.re "9")) (re.* (str.to.re "aaa"))) (re.+ (re.union (str.to.re "bbb") (str.to.re "ccc")))))))))))
(check-sat)