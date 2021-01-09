(declare-const X String)
; /^\/[A-Za-z0-9]+\/[A-Za-z0-9]+\.php\?[A-Za-z0-9\x2B\x2F\x3D]{300}/Ui
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".php?") ((_ re.loop 300 300) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/") (str.to.re "="))) (str.to.re "/Ui\x0a"))))
; /filename=[^\n]*\x2escr/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".scr/i\x0a")))))
; \x2APORT1\x2AWarezX-Mailer\x3ASnake\x2Fbonzibuddy\x2F
(assert (not (str.in.re X (str.to.re "*PORT1*WarezX-Mailer:\x13Snake/bonzibuddy/\x0a"))))
; /filename=[^\n]*\x2escr/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".scr/i\x0a"))))
; /\x2elnk([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.lnk") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
