(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "0") (str.to.re "111")) (re.* (str.to.re "2"))) (re.++ (re.* (re.* (str.to.re "3"))) (re.++ (re.union (re.+ (str.to.re "4")) (re.* (str.to.re "555"))) (re.++ (re.* (re.+ (str.to.re "666"))) (re.++ (re.* (re.union (str.to.re "7") (str.to.re "8"))) (re.++ (re.+ (re.+ (str.to.re "9"))) (re.++ (re.+ (re.* (str.to.re "a"))) (re.++ (re.* (re.+ (str.to.re "bb"))) (re.++ (re.union (re.union (str.to.re "ccc") (str.to.re "ddd")) (re.* (str.to.re "eee"))) (re.union (re.* (str.to.re "ff")) (re.* (str.to.re "ggg"))))))))))))))
(assert (<= 151 (str.len var0)))
(check-sat)