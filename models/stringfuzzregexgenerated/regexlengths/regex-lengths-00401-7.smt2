(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.+ (re.+ (str.to.re "1"))) (re.++ (re.union (re.union (str.to.re "222") (str.to.re "33")) (re.* (str.to.re "44"))) (re.++ (re.union (re.* (str.to.re "555")) (re.+ (str.to.re "6"))) (re.++ (re.* (re.+ (str.to.re "77"))) (re.++ (re.union (re.+ (str.to.re "888")) (re.+ (str.to.re "999"))) (re.++ (re.+ (re.* (str.to.re "aa"))) (re.++ (re.union (re.* (str.to.re "b")) (re.union (str.to.re "ccc") (str.to.re "d"))) (re.++ (re.union (re.* (str.to.re "e")) (re.* (str.to.re "fff"))) (re.union (re.+ (str.to.re "g")) (re.* (str.to.re "hh"))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)