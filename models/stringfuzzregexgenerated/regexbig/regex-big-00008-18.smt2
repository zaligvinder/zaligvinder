(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "0"))) (re.++ (re.* (re.+ (str.to_re "111"))) (re.++ (re.* (re.+ (str.to_re "22"))) (re.++ (re.union (re.+ (str.to_re "3")) (re.+ (str.to_re "44"))) (re.++ (re.* (re.+ (str.to_re "5"))) (re.++ (re.+ (re.* (str.to_re "66"))) (re.++ (re.+ (re.+ (str.to_re "7"))) (re.* (re.* (str.to_re "88"))))))))))))
(check-sat)