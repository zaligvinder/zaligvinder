(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.union (str.to_re "0") (str.to_re "1"))) (re.++ (re.union (re.* (str.to_re "222")) (re.+ (str.to_re "33"))) (re.++ (re.+ (re.+ (str.to_re "4"))) (re.++ (re.union (re.+ (str.to_re "5")) (re.+ (str.to_re "66"))) (re.++ (re.union (re.union (str.to_re "77") (str.to_re "8")) (re.union (str.to_re "99") (str.to_re "aaa"))) (re.++ (re.union (re.* (str.to_re "bbb")) (re.union (str.to_re "ccc") (str.to_re "ddd"))) (re.++ (re.+ (re.+ (str.to_re "eee"))) (re.++ (re.+ (re.union (str.to_re "f") (str.to_re "gg"))) (re.++ (re.union (re.union (str.to_re "hhh") (str.to_re "ii")) (re.* (str.to_re "jjj"))) (re.+ (re.+ (re.++ (re.* re.allchar) (re.++ (str.to_re "") (str.to_re ""))))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
