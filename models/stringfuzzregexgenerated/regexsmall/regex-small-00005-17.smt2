(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "0"))) (re.++ (re.* (re.* (str.to_re "111"))) (re.++ (re.+ (re.+ (str.to_re "2"))) (re.++ (re.union (re.union (str.to_re "3") (str.to_re "444")) (re.* (str.to_re "555"))) (re.union (re.* (str.to_re "6")) (re.union (str.to_re "777") (str.to_re "888")))))))))
(check-sat)