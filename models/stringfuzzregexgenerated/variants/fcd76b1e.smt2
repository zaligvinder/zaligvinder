(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "000")) (re.union (str.to_re "11") (str.to_re "22"))) (re.++ (re.+ (re.+ (str.to_re "333"))) (re.++ (re.+ (re.union (str.to_re "4") (str.to_re "55"))) (re.++ (re.* (re.* (str.to_re "666"))) (re.++ (re.+ (re.union (str.to_re "777") (str.to_re "8"))) (re.++ (re.+ (re.union (str.to_re "99") (str.to_re "aaa"))) (re.++ (re.* (re.union (str.to_re "b") (str.to_re "cc"))) (re.++ (re.* (re.union (str.to_re "ddd") (str.to_re "e"))) (re.++ (re.union (re.* (re.+ (re.* (re.+ re.allchar)))) (re.* (str.to_re "gg"))) (re.+ (re.* (str.to_re "h"))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
