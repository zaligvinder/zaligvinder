(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "0") (str.to_re "11"))) (re.++ (re.union (re.union (str.to_re "222") (str.to_re "33")) (re.+ (str.to_re "4"))) (re.++ (re.union (re.* (str.to_re "555")) (re.union (str.to_re "66") (str.to_re "7"))) (re.++ (re.+ (re.+ (str.to_re "88"))) (re.++ (re.union (re.* (str.to_re "9")) (re.union (str.to_re "aaa") (str.to_re "bbb"))) (re.++ (re.+ (re.* (str.to_re "cc"))) (re.++ (re.* (re.+ (str.to_re "ddd"))) (re.++ (re.+ (re.union (str.to_re "ee") (str.to_re "f"))) (re.++ (re.* (re.+ (str.to_re "gg"))) (re.+ (re.union (re.* (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar)))) (str.to_re "ii"))))))))))))))
(assert (<= 176 (str.len var0)))
(check-sat)
