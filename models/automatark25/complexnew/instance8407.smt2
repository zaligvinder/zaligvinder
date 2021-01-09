(declare-const X String)
; /\x2edcr([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.dcr") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^[0][1-9]{2}(-)[0-9]{8}$  and  ^[0][1-9]{3}(-)[0-9]{7}$  and  ^[0][1-9]{4}(-)[0-9]{6}$
(assert (not (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "-") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "  and  0") ((_ re.loop 3 3) (re.range "1" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "  and  0") ((_ re.loop 4 4) (re.range "1" "9")) (str.to.re "-") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[0-9]*\/{1}[1-9]{1}[0-9]*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "/")) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; pjpoptwql\x2frlnjsportsHost\x3ASubject\x3aYAHOOdestroyed\x21
(assert (str.in.re X (str.to.re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\x0a")))
; ^(000-)(\\d{5}-){2}\\d{3}$
(assert (not (str.in.re X (re.++ (str.to.re "000-") ((_ re.loop 2 2) (re.++ (str.to.re "\x5c") ((_ re.loop 5 5) (str.to.re "d")) (str.to.re "-"))) (str.to.re "\x5c") ((_ re.loop 3 3) (str.to.re "d")) (str.to.re "\x0a")))))
(check-sat)
