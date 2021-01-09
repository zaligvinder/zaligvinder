(declare-const X String)
; /filename=[^\n]*\x2em4p/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4p/i\x0a")))))
; /\/jdb\/inf\.php\?id=[a-f0-9]{32}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//jdb/inf.php?id=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Ui\x0a"))))
; .+\.([^.]+)$
(assert (str.in.re X (re.++ (re.+ re.allchar) (str.to.re ".") (re.+ (re.comp (str.to.re "."))) (str.to.re "\x0a"))))
; /\x2eslk([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.slk") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^[{|\(]?[0-9a-fA-F]{8}[-]?([0-9a-fA-F]{4}[-]?){3}[0-9a-fA-F]{12}[\)|}]?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "{") (str.to.re "|") (str.to.re "("))) ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.opt (str.to.re "-")) ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.opt (str.to.re "-")))) ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.opt (re.union (str.to.re ")") (str.to.re "|") (str.to.re "}"))) (str.to.re "\x0a"))))
(check-sat)
