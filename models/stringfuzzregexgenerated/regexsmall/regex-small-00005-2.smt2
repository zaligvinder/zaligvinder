(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "000"))) (re.++ (re.* (re.* (str.to_re "111"))) (re.++ (re.* (re.union (str.to_re "22") (str.to_re "33"))) (re.++ (re.+ (re.* (str.to_re "4"))) (re.+ (re.+ (str.to_re "55")))))))))
(check-sat)