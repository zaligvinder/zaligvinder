(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "00") (str.to_re "11"))) (re.++ (re.union (re.+ (str.to_re "22")) (re.* (str.to_re "3"))) (re.++ (re.* (re.union (str.to_re "44") (str.to_re "5"))) (re.++ (re.union (re.+ (str.to_re "66")) (re.* (str.to_re "77"))) (re.++ (re.+ (re.+ (str.to_re "88"))) (re.++ (re.* (re.* (str.to_re "99"))) (re.* (re.* (str.to_re "a")))))))))))
(check-sat)