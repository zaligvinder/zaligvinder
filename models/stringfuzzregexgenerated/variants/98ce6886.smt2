(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "0") (str.to_re "11"))) (re.++ (re.+ (re.union (str.to_re "222") (str.to_re "333"))) (re.++ (re.* (re.* (str.to_re "444"))) (re.++ (re.* (re.union (str.to_re "55") (str.to_re "666"))) (re.++ (re.union (re.* (str.to_re "777")) (re.* (str.to_re "88"))) (re.++ (re.union (re.* (str.to_re "9")) (re.+ (str.to_re "aa"))) (re.++ (re.* (re.+ (str.to_re "b"))) (re.++ (re.* (re.* (str.to_re "c"))) (re.++ (re.union (re.union (str.to_re "ddd") (str.to_re "eee")) (re.+ (str.to_re "f"))) (re.+ (re.+ (str.to_re "ggg"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
