(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "00"))) (re.++ (re.* (re.+ (str.to.re "1"))) (re.++ (re.* (re.* (str.to.re "2"))) (re.++ (re.union (re.union (str.to.re "33") (str.to.re "444")) (re.+ (str.to.re "555"))) (re.++ (re.+ (re.union (str.to.re "666") (str.to.re "77"))) (re.++ (re.union (re.+ (str.to.re "88")) (re.+ (str.to.re "99"))) (re.++ (re.* (re.+ (str.to.re "a"))) (re.++ (re.union (re.* (str.to.re "b")) (re.+ (str.to.re "ccc"))) (re.++ (re.union (re.+ (str.to.re "dd")) (re.+ (str.to.re "ee"))) (re.+ (re.+ (str.to.re "ff"))))))))))))))
(assert (<= 1 (str.len var0)))
(check-sat)