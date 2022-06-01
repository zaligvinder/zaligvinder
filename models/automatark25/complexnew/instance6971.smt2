(declare-const X String)
; uuid=\s+User-Agent\u{3a}\d+\u{5C}home\/lordofsearch
(assert (str.in_re X (re.++ (str.to_re "uuid=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "\u{5c}home/lordofsearch\u{a}"))))
; /\u{2e}mid([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.mid") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /filename=[^\n]*\u{2e}dir/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dir/i\u{a}")))))
; ^[0-9\s\(\)\+\-]+$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re "(") (str.to_re ")") (str.to_re "+") (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; ^([A-Z]{2}[0-9]{3})|([A-Z]{2}[\ ][0-9]{3})$
(assert (str.in_re X (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to_re " ") ((_ re.loop 3 3) (re.range "0" "9"))))))
(check-sat)
