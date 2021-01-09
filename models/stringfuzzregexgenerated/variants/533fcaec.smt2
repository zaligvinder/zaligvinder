(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "00"))) (re.++ (re.union (re.* (str.to.re "1")) (re.* (str.to.re "22"))) (re.++ (re.union (re.* (str.to.re "333")) (re.* (str.to.re "44"))) (re.++ (re.+ (re.+ (str.to.re "55"))) (re.++ (re.+ (re.+ (str.to.re "666"))) (re.++ (re.* (re.* (str.to.re "77"))) (re.++ (re.+ (re.union (str.to.re "88") (str.to.re "999"))) (re.++ (re.union (re.union (str.to.re "a") (str.to.re "bbb")) (re.union (str.to.re "cc") (str.to.re "dd"))) (re.++ (re.union (re.+ (str.to.re "ee")) (re.union (str.to.re "f") (str.to.re "ggg"))) (re.* (re.union (str.to.re "hh") (re.++ (re.++ (re.+ re.allchar) (re.* re.allchar)) (re.++ (re.+ (re.* re.allchar)) (re.* re.allchar))))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
