(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "000"))) (re.++ (re.* (re.* (str.to.re "111"))) (re.++ (re.* (re.+ (str.to.re "22"))) (re.++ (re.union (re.* (str.to.re "333")) (re.union (str.to.re "44") (str.to.re "555"))) (re.++ (re.+ (re.union (str.to.re "66") (str.to.re "77"))) (re.++ (re.* (re.* (str.to.re "8"))) (re.++ (re.+ (re.union (str.to.re "999") (str.to.re "aa"))) (re.++ (re.union (re.union (str.to.re "b") (str.to.re "ccc")) (re.* (str.to.re "d"))) (re.++ (re.union (re.union (str.to.re "ee") (str.to.re "ff")) (re.union (str.to.re "ggg") (str.to.re "hhh"))) (re.+ (re.union (str.to.re "i") (str.to.re "jjj"))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)