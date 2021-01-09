(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.* (re.* (str.to.re "111"))) (re.++ (re.union (re.* (str.to.re "22")) (re.union (str.to.re "333") (str.to.re "4"))) (re.++ (re.union (re.union (str.to.re "5") (str.to.re "66")) (re.union (str.to.re "7") (str.to.re "888"))) (re.++ (re.+ (re.+ (str.to.re "99"))) (re.++ (re.union (re.* (str.to.re "aa")) (re.union (str.to.re "bbb") (str.to.re "ccc"))) (re.+ (re.union (str.to.re "ddd") (str.to.re "eee")))))))))))
(check-sat)