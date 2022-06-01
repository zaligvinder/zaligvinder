(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "00") (str.to_re "11"))) (re.++ (re.+ (re.* (str.to_re "222"))) (re.++ (re.union (re.* (str.to_re "333")) (re.union (str.to_re "44") (str.to_re "5"))) (re.++ (re.* (re.union (str.to_re "6") (str.to_re "7"))) (re.++ (re.union (re.union (str.to_re "888") (str.to_re "999")) (re.* (str.to_re "aa"))) (re.++ (re.union (re.* (str.to_re "b")) (re.+ (str.to_re "cc"))) (re.++ (re.+ (re.+ (str.to_re "ddd"))) (re.* (re.union (str.to_re "e") (str.to_re "ff"))))))))))))
(check-sat)