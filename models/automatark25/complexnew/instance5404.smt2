(declare-const X String)
; Project\x2Eearthlinkshprrprt-cs-
(assert (str.in.re X (str.to.re "Project.earthlinkshprrprt-cs-\x13\x0a")))
; User-Agent\x3A\s+\x2APORT3\x2A\d+
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*PORT3*") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(((\.\.){1}/)*|(/){1})?(([a-zA-Z0-9]*)/)*([a-zA-Z0-9]*)+([.jpg]|[.gif])+$
(assert (str.in.re X (re.++ (re.opt (re.union (re.* (re.++ ((_ re.loop 1 1) (str.to.re "..")) (str.to.re "/"))) ((_ re.loop 1 1) (str.to.re "/")))) (re.* (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/"))) (re.+ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.+ (re.union (str.to.re ".") (str.to.re "j") (str.to.re "p") (str.to.re "g") (str.to.re "i") (str.to.re "f"))) (str.to.re "\x0a"))))
; /\x2eogv([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ogv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^(.)+\.(jpg|jpeg|JPG|JPEG)$
(assert (not (str.in.re X (re.++ (re.+ re.allchar) (str.to.re ".") (re.union (str.to.re "jpg") (str.to.re "jpeg") (str.to.re "JPG") (str.to.re "JPEG")) (str.to.re "\x0a")))))
(check-sat)
