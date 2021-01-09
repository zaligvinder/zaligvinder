(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "00"))) (re.++ (re.union (re.+ (str.to.re "1")) (re.* (str.to.re "222"))) (re.++ (re.+ (re.union (str.to.re "3") (str.to.re "4"))) (re.++ (re.union (re.* (str.to.re "5")) (re.union (str.to.re "666") (str.to.re "7"))) (re.++ (re.* (re.union (str.to.re "888") (str.to.re "999"))) (re.++ (re.+ (re.+ (str.to.re "aa"))) (re.++ (re.union (re.* (str.to.re "bb")) (re.* (str.to.re "ccc"))) (re.++ (re.union (re.* (str.to.re "d")) (re.* (str.to.re "eee"))) (re.++ (re.* (re.union (re.+ (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar)))) (str.to.re "ggg"))) (re.* (re.+ (str.to.re "hh"))))))))))))))
(assert (<= 51 (str.len var0)))
(check-sat)
