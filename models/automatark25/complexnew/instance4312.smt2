(declare-const X String)
; (-\d{1,} | \d{1,} | \d{1,}-\d{1,} | \d{1,}-)(,(-\d{1,} | \d{1,} | \d{1,}-\d{1,} | \d{1,}))*
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re "-"))) (re.* (re.++ (str.to_re ",") (re.union (re.++ (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")))))) (str.to_re "\u{a}"))))
; pjpoptwql\u{2f}rlnj\sPG=SPEEDBARadblock\u{2E}linkz\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "pjpoptwql/rlnj") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PG=SPEEDBARadblock.linkz.com\u{a}"))))
; [a-zA-Z]+\-?[a-zA-Z]+
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (str.to_re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}")))))
(check-sat)
