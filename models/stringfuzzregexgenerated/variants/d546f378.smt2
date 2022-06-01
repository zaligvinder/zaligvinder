(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "0"))) (re.++ (re.+ (re.* (str.to_re "111"))) (re.++ (re.+ (re.union (str.to_re "2") (str.to_re "3"))) (re.++ (re.+ (re.+ (str.to_re "444"))) (re.++ (re.+ (re.union (str.to_re "55") (str.to_re "66"))) (re.++ (re.+ (re.union (str.to_re "7") (str.to_re "8"))) (re.++ (re.union (re.* (str.to_re "9")) (re.+ (str.to_re "aa"))) (re.++ (re.union (re.union (str.to_re "bbb") (str.to_re "cc")) (re.+ (str.to_re "d"))) (re.++ (re.union (re.* (str.to_re "eee")) (re.+ (str.to_re "f"))) (re.union (re.* (str.to_re "ggg")) (re.++ (str.to_re "hh") (str.to_re "hh"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
