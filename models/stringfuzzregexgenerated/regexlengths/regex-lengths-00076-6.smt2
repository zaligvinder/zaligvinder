(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "000") (str.to.re "111")) (re.union (str.to.re "22") (str.to.re "33"))) (re.++ (re.+ (re.* (str.to.re "4"))) (re.++ (re.* (re.union (str.to.re "55") (str.to.re "666"))) (re.++ (re.+ (re.union (str.to.re "7") (str.to.re "888"))) (re.++ (re.+ (re.union (str.to.re "9") (str.to.re "aa"))) (re.++ (re.* (re.union (str.to.re "b") (str.to.re "c"))) (re.++ (re.* (re.* (str.to.re "dd"))) (re.++ (re.* (re.* (str.to.re "ee"))) (re.++ (re.* (re.* (str.to.re "ff"))) (re.* (re.+ (str.to.re "ggg"))))))))))))))
(assert (<= 76 (str.len var0)))
(check-sat)