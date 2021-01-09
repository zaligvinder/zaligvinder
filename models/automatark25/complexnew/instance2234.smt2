(declare-const X String)
; ^([\+][0-9]{1,3}([ \.\-])?)?([\(]{1}[0-9]{3}[\)])?([0-9A-Z \.\-]{1,32})((x|ext|extension)?[0-9]{1,4}?)$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "+") ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-"))))) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")"))) ((_ re.loop 1 32) (re.union (re.range "0" "9") (re.range "A" "Z") (str.to.re " ") (str.to.re ".") (str.to.re "-"))) (str.to.re "\x0a") (re.opt (re.union (str.to.re "x") (str.to.re "ext") (str.to.re "extension"))) ((_ re.loop 1 4) (re.range "0" "9"))))))
; /^\d+O\d+\.jsp\?[a-z0-9\x3d\x2b\x2f]{20}/iR
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iR\x0a"))))
; /\x2ejfif([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jfif") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /^\/[A-Z]{6}$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 6 6) (re.range "A" "Z")) (str.to.re "/U\x0a"))))
(check-sat)
