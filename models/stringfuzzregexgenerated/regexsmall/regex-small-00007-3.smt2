(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "0")) (re.union (str.to_re "11") (str.to_re "222"))) (re.++ (re.+ (re.+ (str.to_re "3"))) (re.++ (re.union (re.+ (str.to_re "4")) (re.+ (str.to_re "55"))) (re.++ (re.+ (re.+ (str.to_re "6"))) (re.++ (re.* (re.* (str.to_re "77"))) (re.++ (re.* (re.+ (str.to_re "8"))) (re.* (re.union (str.to_re "999") (str.to_re "aaa")))))))))))
(check-sat)