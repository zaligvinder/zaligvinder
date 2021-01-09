(declare-const X String)
; \x7D\x7BTrojan\x3A\w+Host\x3Arprpgbnrppb\x2fci
(assert (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:rprpgbnrppb/ci\x0a"))))
; (\[url=?"?)([^\]"]*)("?\])([^\[]*)(\[/url\])
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "]") (str.to.re "\x22"))) (re.* (re.comp (str.to.re "["))) (str.to.re "[/url]\x0a[url") (re.opt (str.to.re "=")) (re.opt (str.to.re "\x22")) (re.opt (str.to.re "\x22")) (str.to.re "]"))))
; /^User\x2DAgent\x3A\s*Mozilla\x0d?$/smiH
(assert (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Mozilla") (re.opt (str.to.re "\x0d")) (str.to.re "/smiH\x0a"))))
; /filename=[^\n]*\x2expm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xpm/i\x0a"))))
; [1-9][0-9]{3}[ ]?(([a-rt-zA-RT-Z][a-zA-Z])|([sS][bce-rt-xBCE-RT-X]))
(assert (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) (re.union (re.++ (re.union (re.range "a" "r") (re.range "t" "z") (re.range "A" "R") (re.range "T" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "b") (str.to.re "c") (re.range "e" "r") (re.range "t" "x") (str.to.re "B") (str.to.re "C") (re.range "E" "R") (re.range "T" "X")))) (str.to.re "\x0a"))))
(check-sat)
