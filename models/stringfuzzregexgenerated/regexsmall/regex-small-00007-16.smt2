(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "000"))) (re.++ (re.union (re.union (str.to_re "111") (str.to_re "22")) (re.+ (str.to_re "333"))) (re.++ (re.* (re.* (str.to_re "44"))) (re.++ (re.* (re.union (str.to_re "5") (str.to_re "666"))) (re.++ (re.* (re.union (str.to_re "7") (str.to_re "88"))) (re.++ (re.union (re.+ (str.to_re "9")) (re.* (str.to_re "aaa"))) (re.+ (re.union (str.to_re "bbb") (str.to_re "ccc")))))))))))
(check-sat)