(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.union (str.to_re "000") (str.to_re "111")) (re.+ (str.to_re "22"))) (re.++ (re.+ (re.union (str.to_re "333") (str.to_re "444"))) (re.++ (re.union (re.* (str.to_re "55")) (re.* (str.to_re "6"))) (re.++ (re.+ (re.+ (str.to_re "777"))) (re.++ (re.+ (re.* (str.to_re "88"))) (re.++ (re.* (re.+ (str.to_re "9"))) (re.++ (re.* (re.+ (str.to_re "aaa"))) (re.++ (re.* (re.+ (str.to_re "b"))) (re.++ (re.+ (re.+ (str.to_re "ccc"))) (re.+ (re.union (str.to_re "ddd") (str.to_re "eee"))))))))))))))
(check-sat)