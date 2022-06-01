(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "00")) (re.union (str.to_re "111") (str.to_re "22"))) (re.++ (re.union (re.* (str.to_re "33")) (re.+ (str.to_re "44"))) (re.++ (re.union (re.union (str.to_re "55") (str.to_re "6")) (re.* (str.to_re "7"))) (re.++ (re.+ (re.+ (str.to_re "8"))) (re.++ (re.* (re.+ (str.to_re "999"))) (re.++ (re.* (re.* (str.to_re "aaa"))) (re.+ (re.+ (str.to_re "b")))))))))))
(check-sat)