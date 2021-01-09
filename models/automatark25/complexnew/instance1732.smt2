(declare-const X String)
; /filename=[^\n]*\x2em4r/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4r/i\x0a")))))
; /^\/\x3f[1-9][A-Za-z0-9~_-]{240}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//?") (re.range "1" "9") ((_ re.loop 240 240) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "~") (str.to.re "_") (str.to.re "-"))) (str.to.re "/Ui\x0a")))))
(check-sat)
