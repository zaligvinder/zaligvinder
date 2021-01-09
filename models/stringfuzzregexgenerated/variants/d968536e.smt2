(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "000"))) (re.++ (re.union (re.+ (str.to.re "1")) (re.union (str.to.re "2") (str.to.re "33"))) (re.++ (re.union (re.union (str.to.re "4") (str.to.re "555")) (re.+ (str.to.re "666"))) (re.++ (re.+ (re.+ (str.to.re "7"))) (re.++ (re.union (re.* (str.to.re "8")) (re.* (str.to.re "99"))) (re.++ (re.+ (re.+ (str.to.re "a"))) (re.++ (re.+ (re.* (str.to.re "bbb"))) (re.++ (re.union (re.* (str.to.re "ccc")) (re.+ (str.to.re "ddd"))) (re.++ (re.+ (re.+ (str.to.re "e"))) (re.union (re.* (str.to.re "fff")) (re.union (str.to.re "gg") (re.++ (re.++ (re.+ re.allchar) (re.* re.allchar)) (re.++ (re.+ (re.* re.allchar)) (re.* re.allchar))))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
