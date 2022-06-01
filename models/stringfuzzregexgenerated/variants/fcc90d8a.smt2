(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "000")) (re.union (str.to_re "11") (str.to_re "222"))) (re.++ (re.union (re.* (str.to_re "33")) (re.+ (str.to_re "444"))) (re.++ (re.union (re.union (str.to_re "555") (str.to_re "666")) (re.union (str.to_re "77") (str.to_re "88"))) (re.++ (re.* (re.union (str.to_re "9") (str.to_re "aaa"))) (re.++ (re.+ (re.+ (str.to_re "bb"))) (re.++ (re.+ (re.* (str.to_re "cc"))) (re.++ (re.+ (re.+ (str.to_re "ddd"))) (re.++ (re.union (re.+ (str.to_re "ee")) (re.+ (str.to_re "f"))) (re.++ (re.+ (re.union (str.to_re "gg") (str.to_re "hh"))) (re.+ (re.+ (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar))))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
