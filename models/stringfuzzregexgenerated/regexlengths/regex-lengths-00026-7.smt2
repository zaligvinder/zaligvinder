(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "0"))) (re.++ (re.union (re.* (str.to.re "111")) (re.* (str.to.re "222"))) (re.++ (re.* (re.union (str.to.re "3") (str.to.re "44"))) (re.++ (re.union (re.+ (str.to.re "55")) (re.union (str.to.re "666") (str.to.re "77"))) (re.++ (re.union (re.* (str.to.re "8")) (re.union (str.to.re "99") (str.to.re "aaa"))) (re.++ (re.+ (re.* (str.to.re "b"))) (re.++ (re.* (re.+ (str.to.re "cc"))) (re.++ (re.* (re.* (str.to.re "dd"))) (re.++ (re.union (re.union (str.to.re "ee") (str.to.re "ff")) (re.* (str.to.re "g"))) (re.union (re.* (str.to.re "hh")) (re.union (str.to.re "iii") (str.to.re "jj"))))))))))))))
(assert (<= 26 (str.len var0)))
(check-sat)