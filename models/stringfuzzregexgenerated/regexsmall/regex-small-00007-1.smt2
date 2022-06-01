(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "0"))) (re.++ (re.+ (re.+ (str.to_re "11"))) (re.++ (re.+ (re.union (str.to_re "22") (str.to_re "333"))) (re.++ (re.* (re.union (str.to_re "4") (str.to_re "5"))) (re.++ (re.* (re.union (str.to_re "666") (str.to_re "77"))) (re.++ (re.* (re.* (str.to_re "88"))) (re.union (re.+ (str.to_re "9")) (re.* (str.to_re "a")))))))))))
(check-sat)