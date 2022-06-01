(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "00") (str.to_re "111"))) (re.++ (re.+ (re.union (str.to_re "222") (str.to_re "3"))) (re.++ (re.union (re.* (str.to_re "444")) (re.+ (str.to_re "555"))) (re.++ (re.* (re.union (str.to_re "6") (str.to_re "7"))) (re.++ (re.* (re.+ (str.to_re "888"))) (re.++ (re.+ (re.union (str.to_re "999") (str.to_re "a"))) (re.++ (re.union (re.* (str.to_re "b")) (re.union (str.to_re "c") (str.to_re "d"))) (re.++ (re.union (re.* (str.to_re "e")) (re.union (str.to_re "f") (re.+ (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar)))))) (re.++ (re.* (re.+ (str.to_re "hhh"))) (re.* (re.+ (str.to_re "ii"))))))))))))))
(assert (<= 76 (str.len var0)))
(check-sat)
