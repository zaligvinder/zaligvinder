(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "00")) (re.union (str.to_re "11") (str.to_re "22"))) (re.++ (re.* (re.union (str.to_re "3") (str.to_re "44"))) (re.++ (re.union (re.union (str.to_re "555") (str.to_re "66")) (re.+ (str.to_re "77"))) (re.++ (re.union (re.* (str.to_re "888")) (re.* (str.to_re "99"))) (re.++ (re.* (re.* (str.to_re "aaa"))) (re.++ (re.union (re.+ (str.to_re "bb")) (re.* (str.to_re "cc"))) (re.++ (re.union (re.* (str.to_re "dd")) (re.* (str.to_re "e"))) (re.++ (re.* (re.* (str.to_re "f"))) (re.++ (re.* (re.* (str.to_re "gg"))) (re.union (re.union (str.to_re "h") (str.to_re "i")) (re.+ (re.+ (re.* re.allchar)))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
