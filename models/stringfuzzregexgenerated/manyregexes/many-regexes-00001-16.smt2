(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "00")) (re.union (str.to_re "11") (str.to_re "222"))) (re.++ (re.* (re.* (str.to_re "3"))) (re.++ (re.+ (re.union (str.to_re "444") (str.to_re "55"))) (re.++ (re.+ (re.+ (str.to_re "6"))) (re.++ (re.* (re.* (str.to_re "7"))) (re.++ (re.+ (re.+ (str.to_re "8"))) (re.++ (re.* (re.* (str.to_re "99"))) (re.++ (re.+ (re.* (str.to_re "aaa"))) (re.++ (re.+ (re.* (str.to_re "bb"))) (re.union (re.* (str.to_re "ccc")) (re.union (str.to_re "ddd") (str.to_re "eee"))))))))))))))
(check-sat)