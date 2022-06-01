(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.union (str.to_re "00") (str.to_re "1")) (re.* (str.to_re "2"))) (re.++ (re.* (re.* (str.to_re "33"))) (re.++ (re.* (re.union (str.to_re "444") (str.to_re "555"))) (re.++ (re.+ (re.* (str.to_re "6"))) (re.++ (re.union (re.union (str.to_re "777") (str.to_re "888")) (re.+ (str.to_re "9"))) (re.++ (re.* (re.* (str.to_re "aa"))) (re.++ (re.union (re.union (str.to_re "bb") (str.to_re "c")) (re.+ (str.to_re "dd"))) (re.++ (re.+ (re.* (str.to_re "e"))) (re.++ (re.+ (re.+ (str.to_re "ff"))) (re.* (re.union (str.to_re "ggg") (re.+ (re.++ (str.to_re "") (str.to_re ""))))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
