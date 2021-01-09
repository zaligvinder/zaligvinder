(declare-const X String)
; (-\d{1,} | \d{1,} | \d{1,}-\d{1,} | \d{1,}-)(,(-\d{1,} | \d{1,} | \d{1,}-\d{1,} | \d{1,}))*
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re "-"))) (re.* (re.++ (str.to.re ",") (re.union (re.++ (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.+ (re.range "0" "9")))))) (str.to.re "\x0a"))))
; pjpoptwql\x2frlnj\sPG=SPEEDBARadblock\x2Elinkz\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "pjpoptwql/rlnj") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "PG=SPEEDBARadblock.linkz.com\x0a"))))
; [a-zA-Z]+\-?[a-zA-Z]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (str.to.re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
(check-sat)
