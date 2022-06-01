(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "000"))) (re.++ (re.union (re.+ (str.to_re "1")) (re.union (str.to_re "22") (str.to_re "333"))) (re.++ (re.* (re.+ (str.to_re "444"))) (re.++ (re.union (re.* (str.to_re "555")) (re.+ (str.to_re "6"))) (re.++ (re.* (re.union (str.to_re "777") (str.to_re "888"))) (re.++ (re.union (re.* (str.to_re "9")) (re.* (str.to_re "aaa"))) (re.++ (re.* (re.union (str.to_re "bbb") (str.to_re "cc"))) (re.++ (re.union (re.+ (str.to_re "d")) (re.union (str.to_re "e") (str.to_re "ff"))) (re.++ (re.* (re.* (str.to_re "g"))) (re.+ (re.+ (str.to_re "hh"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
