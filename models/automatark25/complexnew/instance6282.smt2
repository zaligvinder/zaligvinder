(declare-const X String)
; We\d+pjpoptwql\x2frlnjX-Mailer\x3a
(assert (str.in.re X (re.++ (str.to.re "We") (re.+ (re.range "0" "9")) (str.to.re "pjpoptwql/rlnjX-Mailer:\x13\x0a"))))
; /filename=[^\n]*\x2eaddin/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".addin/i\x0a")))))
; ^([a-z0-9]+([\-a-z0-9]*[a-z0-9]+)?\.){0,}([a-z0-9]+([\-a-z0-9]*[a-z0-9]+)?){1,63}(\.[a-z0-9]{2,7})+$
(assert (not (str.in.re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt (re.++ (re.* (re.union (str.to.re "-") (re.range "a" "z") (re.range "0" "9"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to.re "."))) ((_ re.loop 1 63) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt (re.++ (re.* (re.union (str.to.re "-") (re.range "a" "z") (re.range "0" "9"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))))) (re.+ (re.++ (str.to.re ".") ((_ re.loop 2 7) (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to.re "\x0a")))))
; forum=.*Explorer\s+Host\x3Aact=Host\x3aUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "forum=") (re.* re.allchar) (str.to.re "Explorer") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:act=Host:User-Agent:\x0a"))))
(check-sat)
