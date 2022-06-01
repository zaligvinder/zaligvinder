(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "00") (str.to_re "11"))) (re.++ (re.+ (re.* (str.to_re "2"))) (re.++ (re.+ (re.* (str.to_re "333"))) (re.++ (re.union (re.* (str.to_re "4")) (re.* (str.to_re "555"))) (re.++ (re.+ (re.* (str.to_re "6"))) (re.++ (re.union (re.* (str.to_re "7")) (re.* (str.to_re "88"))) (re.++ (re.+ (re.union (str.to_re "9") (str.to_re "a"))) (re.++ (re.+ (re.* (str.to_re "bb"))) (re.++ (re.+ (re.* (str.to_re "ccc"))) (re.* (re.+ (str.to_re "ddd"))))))))))))))
(check-sat)