(declare-const X String)
; /filename=[^\n]*\x2eses/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ses/i\x0a")))))
; /\x2ewax([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.wax") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\x2expm([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.xpm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^((0?[1-9]|1[012])(:[0-5]\d){0,2}(\ [AP]M))$|^([01]\d|2[0-3])(:[0-5]\d){0,2}$
(assert (not (str.in.re X (re.union (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) ((_ re.loop 0 2) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to.re " ") (re.union (str.to.re "A") (str.to.re "P")) (str.to.re "M")) (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) ((_ re.loop 0 2) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a"))))))
; TOOLBAR\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "TOOLBAR") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "dist.atlas-ia.com\x0a"))))
(check-sat)
