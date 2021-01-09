(declare-const X String)
; /filename=[^\n]*\x2ek3g/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".k3g/i\x0a"))))
; forum=.*Explorer\s+Host\x3Aact=Host\x3aUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "forum=") (re.* re.allchar) (str.to.re "Explorer") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:act=Host:User-Agent:\x0a")))))
; /^id\x3d[A-F\d]{32}(\x26info\x3d[A-F\d]{24})?$/P
(assert (not (str.in.re X (re.++ (str.to.re "/id=") ((_ re.loop 32 32) (re.union (re.range "A" "F") (re.range "0" "9"))) (re.opt (re.++ (str.to.re "&info=") ((_ re.loop 24 24) (re.union (re.range "A" "F") (re.range "0" "9"))))) (str.to.re "/P\x0a")))))
; /filename=[^\n]*\x2equo/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".quo/i\x0a"))))
(check-sat)
