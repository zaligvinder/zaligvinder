(declare-const X String)
; /\u{2e}asx([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.asx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /^\/images2\/[0-9a-fA-F]{500,}/U
(assert (not (str.in_re X (re.++ (str.to_re "//images2//U\u{a}") ((_ re.loop 500 500) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))))))
; ([0-9]|[0-9][0-9])\.\s
(assert (not (str.in_re X (re.++ (str.to_re ".") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}") (re.range "0" "9") (re.range "0" "9")))))
; LogsHXLogOnlytoolbar\u{2E}i-lookup\u{2E}com
(assert (str.in_re X (str.to_re "LogsHXLogOnlytoolbar.i-lookup.com\u{a}")))
(check-sat)
