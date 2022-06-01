(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "000"))) (re.++ (re.+ (re.union (str.to_re "111") (str.to_re "222"))) (re.++ (re.+ (re.union (str.to_re "3") (str.to_re "444"))) (re.++ (re.* (re.union (str.to_re "5") (str.to_re "666"))) (re.++ (re.union (re.+ (str.to_re "77")) (re.+ (str.to_re "88"))) (re.++ (re.union (re.* (str.to_re "99")) (re.+ (str.to_re "aaa"))) (re.++ (re.+ (re.* (str.to_re "b"))) (re.++ (re.* (re.union (str.to_re "cc") (str.to_re "ddd"))) (re.++ (re.* (re.union (str.to_re "ee") (str.to_re "ff"))) (re.* (re.++ (str.to_re "g") (str.to_re "hh"))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
