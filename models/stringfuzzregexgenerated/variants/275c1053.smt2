(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.union (str.to_re "0") (str.to_re "1")) (re.+ (str.to_re "2"))) (re.++ (re.+ (re.union (str.to_re "33") (str.to_re "44"))) (re.++ (re.* (re.union (str.to_re "5") (str.to_re "6"))) (re.++ (re.union (re.union (str.to_re "77") (str.to_re "88")) (re.union (str.to_re "999") (str.to_re "aaa"))) (re.++ (re.union (re.+ (str.to_re "b")) (re.+ (str.to_re "cc"))) (re.++ (re.* (re.* (str.to_re "d"))) (re.++ (re.+ (re.+ (str.to_re "ee"))) (re.++ (re.+ (re.+ (str.to_re "fff"))) (re.++ (re.union (re.union (str.to_re "gg") (str.to_re "hh")) (re.+ (str.to_re "ii"))) (re.union (re.union (str.to_re "j") (str.to_re "kkk")) (re.++ (str.to_re "ll") (str.to_re "ll"))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
