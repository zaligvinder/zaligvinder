(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.union (str.to.re "1") (str.to.re "222"))) (re.++ (re.* (re.+ (str.to.re "33"))) (re.++ (re.* (re.+ (str.to.re "4"))) (re.++ (re.union (re.+ (str.to.re "55")) (re.* (str.to.re "666"))) (re.++ (re.+ (re.union (str.to.re "77") (str.to.re "88"))) (re.++ (re.union (re.+ (str.to.re "999")) (re.* (str.to.re "a"))) (re.++ (re.union (re.union (str.to.re "bbb") (str.to.re "c")) (re.+ (str.to.re "dd"))) (re.++ (re.union (re.* (str.to.re "ee")) (re.* (str.to.re "fff"))) (re.++ (re.+ (re.union (str.to.re "g") (str.to.re "hhh"))) (re.union (re.+ (str.to.re "i")) (re.union (re.+ (re.* re.allchar)) (str.to.re "kk"))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
