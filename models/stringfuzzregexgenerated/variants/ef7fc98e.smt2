(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "000") (str.to.re "111"))) (re.++ (re.* (re.+ (str.to.re "2"))) (re.++ (re.union (re.* (str.to.re "3")) (re.union (str.to.re "44") (str.to.re "555"))) (re.++ (re.* (re.* (str.to.re "6"))) (re.++ (re.union (re.* (str.to.re "77")) (re.+ (str.to.re "888"))) (re.++ (re.+ (re.+ (str.to.re "9"))) (re.++ (re.* (re.union (str.to.re "aaa") (str.to.re "bb"))) (re.++ (re.union (re.* (str.to.re "c")) (re.union (str.to.re "d") (str.to.re "eee"))) (re.++ (re.+ (re.+ (str.to.re "ff"))) (re.union (re.* (str.to.re "gg")) (re.union (str.to.re "hh") (re.* (re.++ (re.+ re.allchar) (re.* re.allchar))))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
