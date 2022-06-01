(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "0"))) (re.++ (re.+ (re.union (str.to_re "1") (str.to_re "222"))) (re.++ (re.+ (re.* (str.to_re "3"))) (re.++ (re.union (re.* (str.to_re "44")) (re.* (str.to_re "555"))) (re.++ (re.* (re.* (str.to_re "6"))) (re.++ (re.union (re.union (str.to_re "777") (str.to_re "8")) (re.* (str.to_re "99"))) (re.++ (re.+ (re.union (str.to_re "aa") (str.to_re "bbb"))) (re.++ (re.* (re.* (str.to_re "c"))) (re.+ (re.+ (str.to_re "ddd")))))))))))))
(check-sat)