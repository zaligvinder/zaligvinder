(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "00"))) (re.++ (re.* (re.+ (str.to.re "1"))) (re.++ (re.* (re.* (str.to.re "222"))) (re.++ (re.union (re.+ (str.to.re "33")) (re.union (str.to.re "44") (str.to.re "55"))) (re.++ (re.+ (re.union (str.to.re "6") (str.to.re "77"))) (re.++ (re.union (re.union (str.to.re "8") (str.to.re "999")) (re.+ (str.to.re "a"))) (re.++ (re.union (re.+ (str.to.re "bb")) (re.* (str.to.re "c"))) (re.++ (re.* (re.* (str.to.re "dd"))) (re.++ (re.union (re.+ (str.to.re "e")) (re.union (str.to.re "fff") (str.to.re "g"))) (re.* (re.union (str.to.re "hh") (re.* (re.++ (re.+ re.allchar) (re.* re.allchar))))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
