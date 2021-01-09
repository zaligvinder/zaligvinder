(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.* (re.* (str.to.re "111"))) (re.++ (re.* (re.union (str.to.re "22") (str.to.re "3"))) (re.++ (re.union (re.union (str.to.re "44") (str.to.re "5")) (re.+ (str.to.re "66"))) (re.++ (re.* (re.union (str.to.re "7") (str.to.re "888"))) (re.++ (re.+ (re.* (str.to.re "99"))) (re.++ (re.+ (re.+ (str.to.re "a"))) (re.++ (re.union (re.union (str.to.re "bbb") (str.to.re "cc")) (re.union (str.to.re "dd") (str.to.re "ee"))) (re.* (re.* (str.to.re "ff")))))))))))))
(check-sat)