(declare-const X String)
; [^\d^\-^\,^\u{20}]+
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re "^") (str.to_re "-") (str.to_re ",") (str.to_re " "))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}rmf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rmf/i\u{a}")))))
(check-sat)
