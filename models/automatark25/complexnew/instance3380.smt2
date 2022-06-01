(declare-const X String)
; ^[http://www.|www.][\S]+$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "h") (str.to_re "t") (str.to_re "p") (str.to_re ":") (str.to_re "/") (str.to_re "w") (str.to_re ".") (str.to_re "|")) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "\u{a}")))))
; /filename=[^\n]*\u{2e}sami/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sami/i\u{a}"))))
; ^[-+]?\d+(\.\d+)?|[-+]?\.\d+?$
(assert (str.in_re X (re.union (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
