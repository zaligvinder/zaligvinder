(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.* (re.* (str.to_re "11"))) (re.++ (re.union (re.* (str.to_re "2")) (re.union (str.to_re "33") (str.to_re "44"))) (re.++ (re.union (re.union (str.to_re "55") (str.to_re "6")) (re.union (str.to_re "777") (str.to_re "888"))) (re.+ (re.union (str.to_re "99") (str.to_re "aaa")))))))))
(check-sat)