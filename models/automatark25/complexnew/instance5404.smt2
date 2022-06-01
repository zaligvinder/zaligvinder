(declare-const X String)
; Project\u{2E}earthlinkshprrprt-cs-
(assert (str.in_re X (str.to_re "Project.earthlinkshprrprt-cs-\u{13}\u{a}")))
; User-Agent\u{3A}\s+\u{2A}PORT3\u{2A}\d+
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "*PORT3*") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^(((\.\.){1}/)*|(/){1})?(([a-zA-Z0-9]*)/)*([a-zA-Z0-9]*)+([.jpg]|[.gif])+$
(assert (str.in_re X (re.++ (re.opt (re.union (re.* (re.++ ((_ re.loop 1 1) (str.to_re "..")) (str.to_re "/"))) ((_ re.loop 1 1) (str.to_re "/")))) (re.* (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/"))) (re.+ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.+ (re.union (str.to_re ".") (str.to_re "j") (str.to_re "p") (str.to_re "g") (str.to_re "i") (str.to_re "f"))) (str.to_re "\u{a}"))))
; /\u{2e}ogv([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.ogv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^(.)+\.(jpg|jpeg|JPG|JPEG)$
(assert (not (str.in_re X (re.++ (re.+ re.allchar) (str.to_re ".") (re.union (str.to_re "jpg") (str.to_re "jpeg") (str.to_re "JPG") (str.to_re "JPEG")) (str.to_re "\u{a}")))))
(check-sat)
