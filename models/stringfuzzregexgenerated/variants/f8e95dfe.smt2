(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "000"))) (re.++ (re.+ (re.+ (str.to_re "11"))) (re.++ (re.+ (re.union (str.to_re "2") (str.to_re "333"))) (re.++ (re.+ (re.+ (str.to_re "4"))) (re.++ (re.* (re.+ (str.to_re "5"))) (re.++ (re.union (re.union (str.to_re "66") (str.to_re "77")) (re.+ (str.to_re "888"))) (re.++ (re.* (re.union (str.to_re "9") (str.to_re "a"))) (re.++ (re.+ (re.+ (str.to_re "bbb"))) (re.++ (re.* (re.union (str.to_re "cc") (str.to_re "d"))) (re.union (re.+ (str.to_re "e")) (re.union (re.++ (re.++ (re.+ (re.++ (str.to_re "") (str.to_re ""))) (re.+ re.allchar)) (re.* re.allchar)) (str.to_re "ggg"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
