(declare-const X String)
; [\w!#$%&&apos;*+./=?`{|}~^-]+@[\d.A-Za-z-]+
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "!") (str.to.re "#") (str.to.re "$") (str.to.re "%") (str.to.re "&") (str.to.re "a") (str.to.re "p") (str.to.re "o") (str.to.re "s") (str.to.re ";") (str.to.re "*") (str.to.re "+") (str.to.re ".") (str.to.re "/") (str.to.re "=") (str.to.re "?") (str.to.re "`") (str.to.re "{") (str.to.re "|") (str.to.re "}") (str.to.re "~") (str.to.re "^") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (str.to.re ".") (re.range "A" "Z") (re.range "a" "z") (str.to.re "-"))) (str.to.re "\x0a"))))
; /\x3F[0-9a-z]{32}D/U
(assert (str.in.re X (re.++ (str.to.re "/?") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "D/U\x0a"))))
; ^[a-zA-Z]\:\\.*|^\\\\.*
(assert (not (str.in.re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":\x5c") (re.* re.allchar)) (re.++ (str.to.re "\x5c\x5c") (re.* re.allchar) (str.to.re "\x0a"))))))
(check-sat)
