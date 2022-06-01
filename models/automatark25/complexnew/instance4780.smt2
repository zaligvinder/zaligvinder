(declare-const X String)
; /filename=[^\n]*\u{2e}cnt/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cnt/i\u{a}")))))
; /\u{2e}img([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.img") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; ^\d[0-9]*[-/]\d[0-9]*$
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.* (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re "/")) (re.range "0" "9") (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
