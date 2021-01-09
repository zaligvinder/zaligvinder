(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "0"))) (re.++ (re.+ (re.+ (str.to.re "11"))) (re.++ (re.+ (re.union (str.to.re "22") (str.to.re "333"))) (re.++ (re.* (re.union (str.to.re "4") (str.to.re "5"))) (re.++ (re.* (re.union (str.to.re "666") (str.to.re "77"))) (re.++ (re.* (re.* (str.to.re "88"))) (re.union (re.+ (str.to.re "9")) (re.* (str.to.re "a")))))))))))
(check-sat)