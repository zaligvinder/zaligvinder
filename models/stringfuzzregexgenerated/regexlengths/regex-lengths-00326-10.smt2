(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "00"))) (re.++ (re.+ (re.* (str.to.re "11"))) (re.++ (re.union (re.union (str.to.re "222") (str.to.re "33")) (re.* (str.to.re "44"))) (re.++ (re.union (re.* (str.to.re "555")) (re.+ (str.to.re "66"))) (re.++ (re.* (re.+ (str.to.re "7"))) (re.++ (re.* (re.union (str.to.re "8") (str.to.re "99"))) (re.++ (re.+ (re.* (str.to.re "aa"))) (re.++ (re.* (re.union (str.to.re "b") (str.to.re "cc"))) (re.++ (re.union (re.+ (str.to.re "d")) (re.union (str.to.re "eee") (str.to.re "ff"))) (re.union (re.+ (str.to.re "ggg")) (re.union (str.to.re "h") (str.to.re "iii"))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)