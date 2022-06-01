(declare-const X String)
; ^[a-z\.]*\s?([a-z\-\']+\s)+[a-z\-\']+$
(assert (str.in_re X (re.++ (re.* (re.union (re.range "a" "z") (str.to_re "."))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (str.to_re "-") (str.to_re "'"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.+ (re.union (re.range "a" "z") (str.to_re "-") (str.to_re "'"))) (str.to_re "\u{a}"))))
; ^([0-9][,]?)*([0-9][0-9])$
(assert (not (str.in_re X (re.++ (re.* (re.++ (re.range "0" "9") (re.opt (str.to_re ",")))) (str.to_re "\u{a}") (re.range "0" "9") (re.range "0" "9")))))
; /filename=[^\n]*\u{2e}ogv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ogv/i\u{a}")))))
; User-Agent\u{3A}\d+Desktop\sIDENTIFY666User-Agent\u{3A}\u{5B}Static
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Desktop") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "IDENTIFY666User-Agent:[Static\u{a}")))))
(check-sat)
