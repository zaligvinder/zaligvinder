(declare-const X String)
; \bfor\b.*[A-Za-z][<> ][\d]
(assert (not (str.in_re X (re.++ (str.to_re "for") (re.* re.allchar) (re.union (re.range "A" "Z") (re.range "a" "z")) (re.union (str.to_re "<") (str.to_re ">") (str.to_re " ")) (re.range "0" "9") (str.to_re "\u{a}")))))
(check-sat)
