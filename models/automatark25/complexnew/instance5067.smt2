(declare-const X String)
; /\x3F[0-9a-z]{32}D/U
(assert (not (str.in.re X (re.++ (str.to.re "/?") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "D/U\x0a")))))
; url=http\x3AGamespyjspIDENTIFYserverHOST\x3ASubject\x3A
(assert (not (str.in.re X (str.to.re "url=http:\x1bGamespyjspIDENTIFYserverHOST:Subject:\x0a"))))
; Toolbar\d+Host\x3AWelcome\x2FcommunicatortbGateCrasher
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.range "0" "9")) (str.to.re "Host:Welcome/communicatortbGateCrasher\x0a")))))
(check-sat)
