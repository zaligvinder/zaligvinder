(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "0")) (re.union (str.to_re "111") (str.to_re "22"))) (re.++ (re.union (re.union (str.to_re "333") (str.to_re "44")) (re.* (str.to_re "5"))) (re.union (re.union (str.to_re "666") (str.to_re "77")) (re.+ (str.to_re "88")))))))
(check-sat)