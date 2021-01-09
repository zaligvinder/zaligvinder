(declare-const X String)
; ^[\(]? ([^0-1]){1}([0-9]){2}([-,\),/,\.])*([ ])?([^0-1]){1}([0-9]){2}[ ]?[-]?[/]?[\.]? ([0-9]){4}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "(")) (str.to.re " ") ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 2 2) (re.range "0" "9")) (re.* (re.union (str.to.re "-") (str.to.re ",") (str.to.re ")") (str.to.re "/") (str.to.re "."))) (re.opt (str.to.re " ")) ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) (re.opt (str.to.re "-")) (re.opt (str.to.re "/")) (re.opt (str.to.re ".")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /^("(\\["\\]|[^"])*"|[^\n])*$/gm
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (re.++ (str.to.re "\x22") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.comp (str.to.re "\x0a")))) (str.to.re "/gm\x0a")))))
; ^0{0,1}[1-9]{1}[0-9]{2}[\s]{0,1}[\-]{0,1}[\s]{0,1}[1-9]{1}[0-9]{6}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2eemf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.emf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^(\d?)*(\.\d{1}|\.\d{2})?$
(assert (not (str.in.re X (re.++ (re.* (re.opt (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))))) (str.to.re "\x0a")))))
(check-sat)
