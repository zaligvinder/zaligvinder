(declare-const X String)
; ^[a-zA-Z]([a-zA-Z[._][\d]])*[@][a-zA-Z[.][\d]]*[.][a-z[.][\d]]*
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "[") (str.to.re ".") (str.to.re "_")) (re.range "0" "9") (str.to.re "]"))) (str.to.re "@") (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "[") (str.to.re ".")) (re.range "0" "9") (re.* (str.to.re "]")) (str.to.re ".") (re.union (re.range "a" "z") (str.to.re "[") (str.to.re ".")) (re.range "0" "9") (re.* (str.to.re "]")) (str.to.re "\x0a")))))
; [0-9a-fA-F]+
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a"))))
; (<b>)([^<>]+)(</b>)
(assert (not (str.in.re X (re.++ (str.to.re "<b>") (re.+ (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re "</b>\x0a")))))
; /\x2edoc([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.doc") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; (\\.|[^"])*
(assert (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (re.comp (str.to.re "\x22")))) (str.to.re "\x0a"))))
(check-sat)
