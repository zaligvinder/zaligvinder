(declare-const X String)
; ^
(assert (not (str.in.re X (str.to.re "\x0a"))))
; ^[2-7]{1}[0-9]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "2" "7")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; hotbar\s+ocllceclbhs\x2fgthftpquickbruteUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "hotbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gthftpquickbruteUser-Agent:\x0a"))))
(check-sat)
