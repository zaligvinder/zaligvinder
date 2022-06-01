(declare-const X String)
; [^\d^\-^\,^\u{20}]+
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re "^") (str.to_re "-") (str.to_re ",") (str.to_re " "))) (str.to_re "\u{a}")))))
; /\u{2e}oga([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.oga") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)
