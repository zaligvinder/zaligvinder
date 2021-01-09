(declare-const X String)
; \\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}
(assert (str.in.re X (re.++ (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2exbm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xbm/i\x0a")))))
; /\x2Equo([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.quo") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^[a-zA-Z][a-zA-Z0-9_]+$
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "\x0a")))))
(check-sat)
