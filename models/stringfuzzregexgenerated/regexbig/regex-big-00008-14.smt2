(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "0")) (re.* (str.to_re "1"))) (re.++ (re.union (re.union (str.to_re "2") (str.to_re "3")) (re.* (str.to_re "44"))) (re.++ (re.union (re.+ (str.to_re "55")) (re.union (str.to_re "6") (str.to_re "77"))) (re.++ (re.* (re.* (str.to_re "88"))) (re.++ (re.+ (re.union (str.to_re "9") (str.to_re "a"))) (re.++ (re.* (re.* (str.to_re "b"))) (re.++ (re.+ (re.* (str.to_re "cc"))) (re.union (re.* (str.to_re "d")) (re.union (str.to_re "e") (str.to_re "ff"))))))))))))
(check-sat)