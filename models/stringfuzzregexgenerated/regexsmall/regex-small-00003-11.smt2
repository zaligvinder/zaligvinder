(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.union (str.to_re "00") (str.to_re "11"))) (re.++ (re.union (re.+ (str.to_re "222")) (re.* (str.to_re "3"))) (re.union (re.union (str.to_re "44") (str.to_re "55")) (re.+ (str.to_re "666")))))))
(check-sat)