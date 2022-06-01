(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "0")) (re.* (str.to_re "1"))) (re.++ (re.union (re.* (str.to_re "22")) (re.* (str.to_re "333"))) (re.++ (re.+ (re.+ (str.to_re "44"))) (re.++ (re.* (re.+ (str.to_re "55"))) (re.+ (re.union (str.to_re "6") (str.to_re "77")))))))))
(check-sat)