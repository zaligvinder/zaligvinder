(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "000"))) (re.++ (re.* (re.union (str.to.re "11") (str.to.re "2"))) (re.++ (re.union (re.union (str.to.re "33") (str.to.re "44")) (re.union (str.to.re "5") (str.to.re "6"))) (re.++ (re.union (re.union (str.to.re "777") (str.to.re "88")) (re.* (str.to.re "9"))) (re.++ (re.+ (re.union (str.to.re "a") (str.to.re "b"))) (re.++ (re.union (re.union (str.to.re "c") (str.to.re "ddd")) (re.* (str.to.re "e"))) (re.++ (re.* (re.* (str.to.re "f"))) (re.++ (re.union (re.+ (str.to.re "ggg")) (re.+ (str.to.re "hh"))) (re.++ (re.* (re.* (str.to.re "ii"))) (re.* (re.+ (str.to.re "jjj"))))))))))))))
(assert (<= 26 (str.len var0)))
(check-sat)