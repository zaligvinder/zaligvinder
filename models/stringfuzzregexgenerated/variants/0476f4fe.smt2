(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.union (re.* (str.to_re "111")) (re.union (str.to_re "22") (str.to_re "33"))) (re.++ (re.* (re.* (str.to_re "44"))) (re.++ (re.+ (re.union (str.to_re "55") (str.to_re "6"))) (re.++ (re.union (re.* (str.to_re "777")) (re.* (str.to_re "888"))) (re.++ (re.+ (re.+ (str.to_re "99"))) (re.++ (re.+ (re.* (str.to_re "aaa"))) (re.++ (re.+ (re.union (str.to_re "bb") (str.to_re "c"))) (re.++ (re.union (re.+ (str.to_re "dd")) (re.+ (str.to_re "ee"))) (re.union (re.* (str.to_re "f")) (re.union (re.+ (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar)))) (str.to_re "hh"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
