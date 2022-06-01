(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "000")) (re.union (str.to_re "1") (str.to_re "2"))) (re.++ (re.+ (re.+ (str.to_re "33"))) (re.++ (re.+ (re.+ (str.to_re "444"))) (re.++ (re.union (re.+ (str.to_re "55")) (re.* (str.to_re "66"))) (re.++ (re.union (re.* (str.to_re "7")) (re.+ (str.to_re "8"))) (re.++ (re.* (re.+ (str.to_re "9"))) (re.++ (re.union (re.+ (str.to_re "aaa")) (re.+ (str.to_re "bbb"))) (re.++ (re.* (re.union (str.to_re "ccc") (str.to_re "d"))) (re.+ (re.+ (str.to_re "eee")))))))))))))
(check-sat)