(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "000"))) (re.++ (re.+ (re.union (str.to_re "1") (str.to_re "2"))) (re.union (re.union (str.to_re "3") (str.to_re "4")) (re.union (str.to_re "5") (str.to_re "66")))))))
(check-sat)