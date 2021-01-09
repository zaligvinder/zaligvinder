(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "00") (str.to.re "111"))) (re.++ (re.union (re.union (str.to.re "2") (str.to.re "33")) (re.+ (str.to.re "44"))) (re.++ (re.* (re.union (str.to.re "5") (str.to.re "666"))) (re.++ (re.+ (re.* (str.to.re "7"))) (re.++ (re.union (re.union (str.to.re "88") (str.to.re "999")) (re.* (str.to.re "aa"))) (re.++ (re.+ (re.+ (str.to.re "b"))) (re.++ (re.+ (re.union (str.to.re "ccc") (str.to.re "dd"))) (re.++ (re.union (re.+ (str.to.re "ee")) (re.+ (str.to.re "ff"))) (re.++ (re.union (re.+ (str.to.re "ggg")) (re.* (str.to.re "hh"))) (re.union (re.+ (re.* (re.* (re.* re.allchar)))) (re.+ (str.to.re "j"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
