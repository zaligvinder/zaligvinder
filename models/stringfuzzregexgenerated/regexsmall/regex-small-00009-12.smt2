(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.* (re.* (str.to_re "111"))) (re.++ (re.* (re.union (str.to_re "22") (str.to_re "3"))) (re.++ (re.union (re.union (str.to_re "44") (str.to_re "5")) (re.+ (str.to_re "66"))) (re.++ (re.* (re.union (str.to_re "7") (str.to_re "888"))) (re.++ (re.+ (re.* (str.to_re "99"))) (re.++ (re.+ (re.+ (str.to_re "a"))) (re.++ (re.union (re.union (str.to_re "bbb") (str.to_re "cc")) (re.union (str.to_re "dd") (str.to_re "ee"))) (re.* (re.* (str.to_re "ff")))))))))))))
(check-sat)