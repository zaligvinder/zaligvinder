(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "00") (str.to.re "111")) (re.union (str.to.re "222") (str.to.re "333"))) (re.++ (re.union (re.+ (str.to.re "44")) (re.union (str.to.re "555") (str.to.re "666"))) (re.++ (re.union (re.* (str.to.re "7")) (re.union (str.to.re "888") (str.to.re "9"))) (re.++ (re.+ (re.* (str.to.re "aa"))) (re.++ (re.* (re.* (str.to.re "b"))) (re.++ (re.* (re.* (str.to.re "ccc"))) (re.++ (re.union (re.+ (str.to.re "ddd")) (re.union (str.to.re "ee") (str.to.re "ff"))) (re.++ (re.union (re.union (str.to.re "ggg") (str.to.re "hh")) (re.* (str.to.re "iii"))) (re.++ (re.+ (re.* (str.to.re "jjj"))) (re.+ (re.union (str.to.re "k") (str.to.re "l"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)