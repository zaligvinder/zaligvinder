(declare-const X String)
; ^([0-9][,]?)*([0-9][0-9])$
(assert (str.in.re X (re.++ (re.* (re.++ (re.range "0" "9") (re.opt (str.to.re ",")))) (str.to.re "\x0a") (re.range "0" "9") (re.range "0" "9"))))
; ^([a-zA-Z0-9])+\\{1}([a-zA-Z0-9])+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re "\x5c")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; /\x2eavi([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.avi") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[^\n]*\x2emkv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mkv/i\x0a")))))
; PortweatherX-Mailer\x3aUser-Agent\x3AToolbar
(assert (str.in.re X (str.to.re "PortweatherX-Mailer:\x13User-Agent:Toolbar\x0a")))
(check-sat)
