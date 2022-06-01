(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "00")) (re.union (str.to_re "11") (str.to_re "2"))) (re.++ (re.* (re.union (str.to_re "333") (str.to_re "4"))) (re.* (re.* (str.to_re "555")))))))
(check-sat)