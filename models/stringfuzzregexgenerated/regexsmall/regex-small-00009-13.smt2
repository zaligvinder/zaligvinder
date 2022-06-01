(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "00"))) (re.++ (re.+ (re.* (str.to_re "11"))) (re.++ (re.* (re.* (str.to_re "2"))) (re.++ (re.* (re.* (str.to_re "33"))) (re.++ (re.union (re.union (str.to_re "44") (str.to_re "555")) (re.+ (str.to_re "6"))) (re.++ (re.union (re.union (str.to_re "77") (str.to_re "888")) (re.+ (str.to_re "99"))) (re.++ (re.union (re.* (str.to_re "a")) (re.+ (str.to_re "bb"))) (re.++ (re.* (re.union (str.to_re "c") (str.to_re "ddd"))) (re.+ (re.+ (str.to_re "e")))))))))))))
(check-sat)