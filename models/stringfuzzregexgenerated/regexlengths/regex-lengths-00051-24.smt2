(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "00")) (re.union (str.to.re "111") (str.to.re "22"))) (re.++ (re.union (re.+ (str.to.re "3")) (re.+ (str.to.re "4"))) (re.++ (re.union (re.* (str.to.re "555")) (re.+ (str.to.re "666"))) (re.++ (re.union (re.union (str.to.re "77") (str.to.re "8")) (re.+ (str.to.re "999"))) (re.++ (re.+ (re.+ (str.to.re "aaa"))) (re.++ (re.+ (re.union (str.to.re "bbb") (str.to.re "c"))) (re.++ (re.+ (re.+ (str.to.re "ddd"))) (re.++ (re.+ (re.* (str.to.re "e"))) (re.++ (re.union (re.+ (str.to.re "fff")) (re.+ (str.to.re "ggg"))) (re.union (re.union (str.to.re "hh") (str.to.re "ii")) (re.* (str.to.re "j"))))))))))))))
(assert (<= 51 (str.len var0)))
(check-sat)