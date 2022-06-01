(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "000"))) (re.++ (re.* (re.* (str.to_re "1"))) (re.++ (re.* (re.union (str.to_re "222") (str.to_re "333"))) (re.++ (re.* (re.* (str.to_re "44"))) (re.++ (re.* (re.union (str.to_re "55") (str.to_re "6"))) (re.++ (re.+ (re.union (str.to_re "7") (str.to_re "88"))) (re.++ (re.+ (re.+ (str.to_re "99"))) (re.++ (re.* (re.* (str.to_re "a"))) (re.++ (re.union (re.+ (str.to_re "b")) (re.+ (str.to_re "c"))) (re.union (re.union (str.to_re "ddd") (str.to_re "e")) (re.+ (re.++ (re.* (re.+ (re.++ (str.to_re "") (str.to_re "")))) (re.* (re.* (re.* re.allchar)))))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
