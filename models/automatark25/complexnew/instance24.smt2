(declare-const X String)
; \sKeylogging\s+ApofisToolbar
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Keylogging\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ApofisToolbar\x0a")))))
; ^\d{5}[- .]?\d{7}[- .]?\d{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 7 7) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ewax/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wax/i\x0a")))))
; ^\b(29[0-9]|2[0-9][0-9]|[01]?[0-9][0-9]?)\\/(29[0-9]|2[0-9][0-9]|[01]?[0-9][0-9]?)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "29") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to.re "\x5c/") (re.union (re.++ (str.to.re "29") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to.re "\x0a"))))
; ZC-Bridge\w+USER-AttachedReferer\x3AyouPointsUser-Agent\x3AHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "ZC-Bridge") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "USER-AttachedReferer:youPointsUser-Agent:Host:\x0a")))))
(check-sat)
