(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.union (re.union (str.to.re "1") (str.to.re "22")) (re.* (str.to.re "3"))) (re.++ (re.* (re.+ (str.to.re "444"))) (re.++ (re.* (re.union (str.to.re "55") (str.to.re "666"))) (re.++ (re.+ (re.+ (str.to.re "77"))) (re.++ (re.* (re.* (str.to.re "88"))) (re.++ (re.union (re.* (str.to.re "9")) (re.* (str.to.re "a"))) (re.++ (re.* (re.union (str.to.re "b") (str.to.re "ccc"))) (re.++ (re.* (re.union (str.to.re "d") (str.to.re "e"))) (re.* (re.union (str.to.re "f") (str.to.re "gg"))))))))))))))
(assert (<= 151 (str.len var0)))
(check-sat)