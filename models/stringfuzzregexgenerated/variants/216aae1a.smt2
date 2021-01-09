(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "000") (str.to.re "1"))) (re.++ (re.union (re.* (str.to.re "222")) (re.+ (str.to.re "3"))) (re.++ (re.* (re.union (str.to.re "444") (str.to.re "555"))) (re.++ (re.+ (re.union (str.to.re "66") (str.to.re "77"))) (re.++ (re.+ (re.union (str.to.re "8") (str.to.re "9"))) (re.++ (re.union (re.union (str.to.re "a") (str.to.re "bb")) (re.union (str.to.re "c") (str.to.re "dd"))) (re.++ (re.* (re.union (str.to.re "eee") (str.to.re "ff"))) (re.++ (re.union (re.+ (str.to.re "g")) (re.* (str.to.re "hhh"))) (re.++ (re.* (re.union (str.to.re "i") (str.to.re "jjj"))) (re.* (re.+ (str.to.re "k"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
