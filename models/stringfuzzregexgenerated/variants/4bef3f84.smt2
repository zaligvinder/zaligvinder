(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "0"))) (re.++ (re.+ (re.+ (str.to_re "1"))) (re.++ (re.* (re.* (str.to_re "2"))) (re.++ (re.union (re.union (str.to_re "33") (str.to_re "4")) (re.* (str.to_re "55"))) (re.++ (re.+ (re.union (str.to_re "6") (str.to_re "7"))) (re.++ (re.union (re.+ (str.to_re "88")) (re.* (str.to_re "99"))) (re.++ (re.union (re.+ (str.to_re "aa")) (re.+ (str.to_re "b"))) (re.++ (re.union (re.* (str.to_re "ccc")) (re.union (str.to_re "ddd") (str.to_re "eee"))) (re.++ (re.union (re.union (str.to_re "ff") (str.to_re "ggg")) (re.+ (str.to_re "hhh"))) (re.+ (re.* (str.to_re "iii"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
