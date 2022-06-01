(declare-const X String)
; ^([1-9]|0[1-9]|1[0-2]):([0-5][0-9])$
(assert (not (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re ":\u{a}") (re.range "0" "5") (re.range "0" "9")))))
; User-Agent\u{3A}\s+\u{7D}\u{7B}Port\u{3A}
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "}{Port:\u{a}"))))
; ([Cc][Hh][Aa][Nn][Dd][Aa][Nn].*?)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "H") (str.to_re "h")) (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "D") (str.to_re "d")) (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "N") (str.to_re "n")) (re.* re.allchar)))))
(check-sat)
