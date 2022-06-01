(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "0"))) (re.++ (re.* (re.union (str.to_re "11") (str.to_re "2"))) (re.++ (re.+ (re.* (str.to_re "333"))) (re.++ (re.* (re.union (str.to_re "4") (str.to_re "5"))) (re.++ (re.union (re.+ (str.to_re "66")) (re.union (str.to_re "77") (str.to_re "8"))) (re.++ (re.+ (re.+ (str.to_re "999"))) (re.* (re.+ (str.to_re "aaa")))))))))))
(check-sat)