(declare-const X String)
; hotbar\s+ocllceclbhs\x2fgthftpquickbruteUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "hotbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gthftpquickbruteUser-Agent:\x0a")))))
(check-sat)
