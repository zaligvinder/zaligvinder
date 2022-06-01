(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "000"))) (re.++ (re.union (re.+ (str.to_re "1")) (re.union (str.to_re "2") (str.to_re "3"))) (re.++ (re.union (re.+ (str.to_re "44")) (re.+ (str.to_re "55"))) (re.++ (re.union (re.* (str.to_re "66")) (re.* (str.to_re "7"))) (re.++ (re.* (re.* (str.to_re "88"))) (re.++ (re.* (re.+ (str.to_re "999"))) (re.union (re.+ (str.to_re "a")) (re.union (str.to_re "bbb") (str.to_re "cc")))))))))))
(check-sat)