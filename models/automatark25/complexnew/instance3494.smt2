(declare-const X String)
; ^\s*
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; ^\$?([A-Za-z]{0,2})\$?([0-9]{0,5}):?\$?([A-Za-z]{0,2})\$?([0-9]{0,5})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "$")) ((_ re.loop 0 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re "$")) ((_ re.loop 0 5) (re.range "0" "9")) (re.opt (str.to.re ":")) (re.opt (str.to.re "$")) ((_ re.loop 0 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re "$")) ((_ re.loop 0 5) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2edae/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dae/i\x0a")))))
; /filename=[^\n]*\x2eaif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".aif/i\x0a"))))
(check-sat)
