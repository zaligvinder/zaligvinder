(declare-const X String)
; ^(\w(([.-])*)(\s)?)+$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.* (re.union (str.to.re ".") (str.to.re "-"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "\x0a"))))
; \x2Fbonzibuddy\x2Forigin\x3DsidefindApofisUser-Agent\x3A
(assert (str.in.re X (str.to.re "/bonzibuddy/origin=sidefindApofisUser-Agent:\x0a")))
; TCP\s+Host\x3a\x7D\x7Crichfind\x2EcomHost\x3ASubject\x3a
(assert (str.in.re X (re.++ (str.to.re "TCP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:}|richfind.comHost:Subject:\x0a"))))
(check-sat)
