(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "000"))) (re.++ (re.* (re.union (str.to_re "11") (str.to_re "22"))) (re.++ (re.* (re.+ (str.to_re "33"))) (re.++ (re.* (re.* (str.to_re "4"))) (re.++ (re.+ (re.* (str.to_re "55"))) (re.++ (re.* (re.* (str.to_re "666"))) (re.union (re.+ (str.to_re "7")) (re.union (str.to_re "8") (str.to_re "99")))))))))))
(check-sat)