(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "00"))) (re.++ (re.* (re.* (str.to_re "111"))) (re.++ (re.union (re.* (str.to_re "22")) (re.union (str.to_re "33") (str.to_re "444"))) (re.++ (re.union (re.union (str.to_re "55") (str.to_re "666")) (re.+ (str.to_re "77"))) (re.++ (re.+ (re.* (str.to_re "888"))) (re.++ (re.+ (re.union (str.to_re "999") (str.to_re "a"))) (re.++ (re.union (re.* (str.to_re "b")) (re.union (str.to_re "c") (str.to_re "dd"))) (re.++ (re.union (re.union (str.to_re "eee") (str.to_re "fff")) (re.+ (str.to_re "g"))) (re.++ (re.+ (re.* (str.to_re "hh"))) (re.* (re.+ (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar))))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
