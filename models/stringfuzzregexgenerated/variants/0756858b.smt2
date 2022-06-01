(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "0")) (re.* (str.to_re "11"))) (re.++ (re.union (re.* (str.to_re "222")) (re.union (str.to_re "33") (str.to_re "44"))) (re.++ (re.+ (re.union (str.to_re "55") (str.to_re "666"))) (re.++ (re.+ (re.union (str.to_re "777") (str.to_re "8"))) (re.++ (re.* (re.+ (str.to_re "999"))) (re.++ (re.union (re.union (str.to_re "a") (str.to_re "b")) (re.+ (str.to_re "cc"))) (re.++ (re.+ (re.+ (str.to_re "ddd"))) (re.++ (re.union (re.* (str.to_re "e")) (re.+ (str.to_re "ff"))) (re.++ (re.union (re.* (str.to_re "gg")) (re.* (re.+ (re.* (re.* (re.* re.allchar)))))) (re.+ (re.+ (str.to_re "ii"))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
