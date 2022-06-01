(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "00") (str.to_re "111"))) (re.++ (re.* (re.union (str.to_re "22") (str.to_re "33"))) (re.++ (re.union (re.+ (str.to_re "44")) (re.union (str.to_re "5") (str.to_re "66"))) (re.++ (re.union (re.* (str.to_re "77")) (re.* (str.to_re "888"))) (re.++ (re.+ (re.* (str.to_re "999"))) (re.++ (re.+ (re.union (str.to_re "aa") (str.to_re "bb"))) (re.++ (re.+ (re.* (str.to_re "ccc"))) (re.++ (re.+ (re.* (str.to_re "ddd"))) (re.++ (re.* (re.* (str.to_re "e"))) (re.* (re.* (re.* (re.* (re.+ (re.++ (str.to_re "") (str.to_re ""))))))))))))))))))
(assert (<= 276 (str.len var0)))
(check-sat)
