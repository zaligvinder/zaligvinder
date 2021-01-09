(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "0")) (re.* (str.to.re "111"))) (re.++ (re.+ (re.+ (str.to.re "22"))) (re.++ (re.+ (re.union (str.to.re "333") (str.to.re "444"))) (re.++ (re.+ (re.+ (str.to.re "5"))) (re.++ (re.union (re.union (str.to.re "666") (str.to.re "77")) (re.union (str.to.re "888") (str.to.re "99"))) (re.++ (re.* (re.* (str.to.re "aa"))) (re.++ (re.+ (re.+ (str.to.re "bbb"))) (re.++ (re.union (re.union (str.to.re "ccc") (str.to.re "dd")) (re.+ (str.to.re "e"))) (re.++ (re.* (re.* (str.to.re "f"))) (re.union (re.union (str.to.re "gg") (str.to.re "hh")) (re.+ (re.* (re.++ (re.+ re.allchar) (re.* re.allchar))))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
