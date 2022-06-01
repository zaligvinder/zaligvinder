(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.* (re.* (str.to_re "111"))) (re.++ (re.union (re.* (str.to_re "22")) (re.union (str.to_re "333") (str.to_re "4"))) (re.++ (re.union (re.union (str.to_re "5") (str.to_re "66")) (re.union (str.to_re "7") (str.to_re "888"))) (re.++ (re.+ (re.+ (str.to_re "99"))) (re.++ (re.union (re.* (str.to_re "aa")) (re.union (str.to_re "bbb") (str.to_re "ccc"))) (re.+ (re.union (str.to_re "ddd") (str.to_re "eee")))))))))))
(check-sat)