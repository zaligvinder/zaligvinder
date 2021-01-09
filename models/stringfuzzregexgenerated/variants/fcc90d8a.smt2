(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "000")) (re.union (str.to.re "11") (str.to.re "222"))) (re.++ (re.union (re.* (str.to.re "33")) (re.+ (str.to.re "444"))) (re.++ (re.union (re.union (str.to.re "555") (str.to.re "666")) (re.union (str.to.re "77") (str.to.re "88"))) (re.++ (re.* (re.union (str.to.re "9") (str.to.re "aaa"))) (re.++ (re.+ (re.+ (str.to.re "bb"))) (re.++ (re.+ (re.* (str.to.re "cc"))) (re.++ (re.+ (re.+ (str.to.re "ddd"))) (re.++ (re.union (re.+ (str.to.re "ee")) (re.+ (str.to.re "f"))) (re.++ (re.+ (re.union (str.to.re "gg") (str.to.re "hh"))) (re.+ (re.+ (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar))))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
