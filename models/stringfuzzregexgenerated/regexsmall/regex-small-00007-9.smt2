(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "000"))) (re.++ (re.* (re.* (str.to_re "11"))) (re.++ (re.+ (re.* (str.to_re "222"))) (re.++ (re.union (re.union (str.to_re "333") (str.to_re "44")) (re.* (str.to_re "5"))) (re.++ (re.* (re.+ (str.to_re "666"))) (re.++ (re.+ (re.+ (str.to_re "7"))) (re.+ (re.+ (str.to_re "888")))))))))))
(check-sat)