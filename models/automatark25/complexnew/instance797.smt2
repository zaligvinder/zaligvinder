(declare-const X String)
; /^\/\x3f[1-9][A-Za-z0-9~_-]{240}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//?") (re.range "1" "9") ((_ re.loop 240 240) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "~") (str.to.re "_") (str.to.re "-"))) (str.to.re "/Ui\x0a")))))
; ^(([0-9]{2})|([a-zA-Z][0-9])|([a-zA-Z]{2}))[0-9]{6}$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; http[s]?://[a-zA-Z0-9.-/]+
(assert (not (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (re.range "." "/"))) (str.to.re "\x0a")))))
; ToolbarUser-Agent\x3AFrom\x3A
(assert (not (str.in.re X (str.to.re "ToolbarUser-Agent:From:\x0a"))))
; /\x2ejfif([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.jfif") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
