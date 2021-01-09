(declare-const X String)
; ^[ABCGHJMPQRTWXYZ]$
(assert (str.in.re X (re.++ (re.union (str.to.re "A") (str.to.re "B") (str.to.re "C") (str.to.re "G") (str.to.re "H") (str.to.re "J") (str.to.re "M") (str.to.re "P") (str.to.re "Q") (str.to.re "R") (str.to.re "T") (str.to.re "W") (str.to.re "X") (str.to.re "Y") (str.to.re "Z")) (str.to.re "\x0a"))))
; emailFrom\x3AUser-Agent\x3AUser-Agent\x3Aselect\x2FGet
(assert (not (str.in.re X (str.to.re "emailFrom:User-Agent:User-Agent:select/Get\x0a"))))
; /\/[a-f0-9]{32}\/[a-f0-9]{32}\x22/R
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x22/R\x0a")))))
; /^[1-9][0-9][0-9][0-9][0-9][0-9]$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (str.to.re "/\x0a"))))
; Host\s+pjpoptwql\x2frlnjSubject\x3A
(assert (str.in.re X (re.++ (str.to.re "Host") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "pjpoptwql/rlnjSubject:\x0a"))))
(check-sat)
