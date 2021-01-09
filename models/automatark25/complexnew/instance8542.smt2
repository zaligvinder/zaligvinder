(declare-const X String)
; from\x3AUser-Agent\x3AChildWebGuardian
(assert (str.in.re X (str.to.re "from:User-Agent:ChildWebGuardian\x0a")))
; ^[a-zA-Z]{3}[uU]{1}[0-9]{7}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 1) (re.union (str.to.re "u") (str.to.re "U"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[a-zA-Z_][a-zA-Z0-9_]*$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "\x0a"))))
; <title>+(.*?)</title>
(assert (not (str.in.re X (re.++ (str.to.re "<title") (re.+ (str.to.re ">")) (re.* re.allchar) (str.to.re "</title>\x0a")))))
(check-sat)
