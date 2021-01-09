(declare-const X String)
; /\x2eram?([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ra") (re.opt (str.to.re "m")) (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; connectedNodes\s+insert\s+haveFTUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "connectedNodes") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insert") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "haveFTUser-Agent:\x0a"))))
; \x7D\x7BTrojan\x3A\w+Host\x3Arprpgbnrppb\x2fci
(assert (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:rprpgbnrppb/ci\x0a"))))
(check-sat)
