(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "0"))) (re.++ (re.+ (re.union (str.to_re "1") (str.to_re "222"))) (re.++ (re.union (re.union (str.to_re "33") (str.to_re "44")) (re.union (str.to_re "55") (str.to_re "666"))) (re.++ (re.+ (re.* (str.to_re "777"))) (re.++ (re.* (re.union (str.to_re "88") (str.to_re "999"))) (re.++ (re.+ (re.* (str.to_re "a"))) (re.++ (re.* (re.union (str.to_re "b") (str.to_re "c"))) (re.++ (re.union (re.+ (str.to_re "dd")) (re.* (str.to_re "ee"))) (re.++ (re.+ (re.+ (str.to_re "fff"))) (re.* (re.+ (str.to_re "gg"))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
