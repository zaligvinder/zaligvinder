(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.union (str.to_re "000") (str.to_re "11")) (re.+ (str.to_re "222"))) (re.++ (re.+ (re.union (str.to_re "333") (str.to_re "4"))) (re.++ (re.+ (re.union (str.to_re "5") (str.to_re "6"))) (re.++ (re.union (re.* (str.to_re "7")) (re.union (str.to_re "8") (str.to_re "99"))) (re.++ (re.* (re.* (str.to_re "aaa"))) (re.++ (re.* (re.* (str.to_re "bb"))) (re.++ (re.union (re.union (str.to_re "c") (str.to_re "d")) (re.+ (str.to_re "ee"))) (re.++ (re.+ (re.union (str.to_re "ff") (str.to_re "ggg"))) (re.++ (re.* (re.+ (str.to_re "hhh"))) (re.union (re.union (str.to_re "ii") (str.to_re "j")) (re.union (str.to_re "k") (re.* (re.* re.allchar)))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
