(declare-const X String)
; (private|public|protected)\s\w(.)*\((.)*\)[^;]
(assert (not (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* re.allchar) (str.to_re "(") (re.* re.allchar) (str.to_re ")") (re.comp (str.to_re ";")) (str.to_re "\u{a}p") (re.union (str.to_re "rivate") (str.to_re "ublic") (str.to_re "rotected"))))))
; www\u{2E}emp3finder\u{2E}com\d+ZOMBIES\u{5f}HTTP\u{5f}GET
(assert (not (str.in_re X (re.++ (str.to_re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to_re "ZOMBIES_HTTP_GET\u{a}")))))
(check-sat)
