(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "000") (str.to.re "1"))) (re.++ (re.* (re.+ (str.to.re "2"))) (re.++ (re.* (re.+ (str.to.re "3"))) (re.++ (re.union (re.union (str.to.re "444") (str.to.re "5")) (re.+ (str.to.re "6"))) (re.++ (re.union (re.* (str.to.re "7")) (re.+ (str.to.re "88"))) (re.++ (re.* (re.union (str.to.re "9") (str.to.re "aaa"))) (re.++ (re.union (re.* (str.to.re "bb")) (re.+ (str.to.re "ccc"))) (re.++ (re.* (re.union (str.to.re "ddd") (str.to.re "eee"))) (re.++ (re.union (re.+ (str.to.re "f")) (re.+ (str.to.re "ggg"))) (re.union (re.+ (str.to.re "h")) (re.+ (str.to.re "ii"))))))))))))))
(assert (<= 101 (str.len var0)))
(check-sat)