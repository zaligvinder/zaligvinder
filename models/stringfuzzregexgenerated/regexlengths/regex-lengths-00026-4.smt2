(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "00"))) (re.++ (re.union (re.* (str.to.re "111")) (re.* (str.to.re "2"))) (re.++ (re.+ (re.+ (str.to.re "333"))) (re.++ (re.union (re.union (str.to.re "44") (str.to.re "55")) (re.+ (str.to.re "66"))) (re.++ (re.+ (re.* (str.to.re "77"))) (re.++ (re.+ (re.+ (str.to.re "88"))) (re.++ (re.* (re.+ (str.to.re "999"))) (re.++ (re.union (re.union (str.to.re "a") (str.to.re "b")) (re.* (str.to.re "ccc"))) (re.++ (re.* (re.union (str.to.re "dd") (str.to.re "eee"))) (re.* (re.+ (str.to.re "fff"))))))))))))))
(assert (<= 26 (str.len var0)))
(check-sat)