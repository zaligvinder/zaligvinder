(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "000"))) (re.++ (re.* (re.union (str.to_re "11") (str.to_re "22"))) (re.++ (re.union (re.+ (str.to_re "33")) (re.* (str.to_re "44"))) (re.++ (re.union (re.* (str.to_re "5")) (re.* (str.to_re "6"))) (re.++ (re.+ (re.* (str.to_re "77"))) (re.++ (re.* (re.+ (str.to_re "888"))) (re.++ (re.* (re.* (str.to_re "9"))) (re.++ (re.union (re.union (str.to_re "aa") (str.to_re "bb")) (re.+ (str.to_re "c"))) (re.++ (re.* (re.union (str.to_re "d") (str.to_re "eee"))) (re.union (re.+ (str.to_re "f")) (re.union (re.+ (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar)))) (str.to_re "h"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
