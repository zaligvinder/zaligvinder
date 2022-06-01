(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "0") (str.to_re "11"))) (re.++ (re.* (re.+ (str.to_re "2"))) (re.++ (re.* (re.* (str.to_re "33"))) (re.++ (re.union (re.+ (str.to_re "4")) (re.+ (str.to_re "5"))) (re.++ (re.+ (re.union (str.to_re "66") (str.to_re "7"))) (re.++ (re.+ (re.+ (str.to_re "8"))) (re.++ (re.union (re.union (str.to_re "999") (str.to_re "a")) (re.+ (str.to_re "bb"))) (re.++ (re.* (re.union (str.to_re "c") (str.to_re "ddd"))) (re.++ (re.union (re.union (str.to_re "e") (str.to_re "f")) (re.+ (str.to_re "gg"))) (re.union (re.union (str.to_re "hhh") (str.to_re "iii")) (re.+ (str.to_re "jjj"))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
