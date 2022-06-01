(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "0"))) (re.++ (re.* (re.* (str.to_re "111"))) (re.++ (re.union (re.* (str.to_re "2")) (re.union (str.to_re "333") (str.to_re "4"))) (re.++ (re.+ (re.* (str.to_re "555"))) (re.++ (re.union (re.union (str.to_re "66") (str.to_re "7")) (re.* (str.to_re "8"))) (re.++ (re.* (re.+ (str.to_re "9"))) (re.union (re.+ (str.to_re "aa")) (re.* (str.to_re "bb")))))))))))
(check-sat)