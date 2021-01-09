(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "1"))) (re.++ (re.* (re.union (str.to.re "22") (str.to.re "3"))) (re.++ (re.* (re.+ (str.to.re "44"))) (re.++ (re.+ (re.+ (str.to.re "555"))) (re.++ (re.* (re.+ (str.to.re "66"))) (re.++ (re.union (re.union (str.to.re "7") (str.to.re "8")) (re.* (str.to.re "999"))) (re.++ (re.union (re.union (str.to.re "aa") (str.to.re "bbb")) (re.+ (str.to.re "c"))) (re.++ (re.union (re.union (str.to.re "d") (str.to.re "e")) (re.* (str.to.re "fff"))) (re.++ (re.union (re.union (str.to.re "g") (str.to.re "h")) (re.+ (str.to.re "ii"))) (re.* (re.++ (str.to.re "jjj") (str.to.re "jjj"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
