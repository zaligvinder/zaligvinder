(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "0")) (re.+ (str.to_re "1"))) (re.++ (re.union (re.union (str.to_re "2") (str.to_re "333")) (re.union (str.to_re "44") (str.to_re "55"))) (re.++ (re.* (re.union (str.to_re "6") (str.to_re "777"))) (re.++ (re.+ (re.+ (str.to_re "88"))) (re.++ (re.+ (re.union (str.to_re "99") (str.to_re "a"))) (re.++ (re.union (re.union (str.to_re "bbb") (str.to_re "cc")) (re.* (str.to_re "dd"))) (re.++ (re.union (re.* (str.to_re "eee")) (re.* (str.to_re "ff"))) (re.++ (re.+ (re.union (str.to_re "g") (str.to_re "hhh"))) (re.++ (re.union (re.* (str.to_re "i")) (re.union (str.to_re "jj") (str.to_re "kk"))) (re.+ (re.+ (str.to_re "l"))))))))))))))
(assert (<= 176 (str.len var0)))
(check-sat)
