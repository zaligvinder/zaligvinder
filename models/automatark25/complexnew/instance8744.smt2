(declare-const X String)
; /\x2f\?ts\x3d[a-f0-9]{40}\x26/Ui
(assert (str.in.re X (re.++ (str.to.re "//?ts=") ((_ re.loop 40 40) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&/Ui\x0a"))))
; Toolbar[^\n\r]*url=\d+Host\x3AWelcome\x2FcommunicatortbGateCrasher
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "url=") (re.+ (re.range "0" "9")) (str.to.re "Host:Welcome/communicatortbGateCrasher\x0a")))))
; /\/[a-z0-9]{9}\.jnlp$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 9 9) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jnlp/U\x0a")))))
; /[0-9a-z]{8}-[0-9a-z]{4}-[0-9a-z]{4}-[0-9a-z]{4}-[0-9a-z]{13}\x28\x0A\x51/
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "-") ((_ re.loop 13 13) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "(\x0aQ/\x0a")))))
(check-sat)
