(declare-const X String)
; /\u{2e}smil([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.smil") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /\u{2e}m4r([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.m4r") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /\.js\/\?[a-z]+\=[a-z]{1,4}/R
(assert (not (str.in_re X (re.++ (str.to_re "/.js/?") (re.+ (re.range "a" "z")) (str.to_re "=") ((_ re.loop 1 4) (re.range "a" "z")) (str.to_re "/R\u{a}")))))
(check-sat)
