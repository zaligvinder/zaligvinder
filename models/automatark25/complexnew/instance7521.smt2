(declare-const X String)
; /i=[a-zA-Z0-9$~]{40}/U
(assert (str.in.re X (re.++ (str.to.re "/i=") ((_ re.loop 40 40) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "$") (str.to.re "~"))) (str.to.re "/U\x0a"))))
; /filename=[^\n]*\x2ef4v/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4v/i\x0a"))))
; /tip\x3D[a-zA-Z]+\x26cli\x3D[a-zA-Z]+\x26tipo\x3Dcli\x26inf\x3D/smiP
(assert (not (str.in.re X (re.++ (str.to.re "/tip=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "&cli=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "&tipo=cli&inf=/smiP\x0a")))))
; /IPHONE\d+.\d/sH
(assert (not (str.in.re X (re.++ (str.to.re "/IPHONE") (re.+ (re.range "0" "9")) re.allchar (re.range "0" "9") (str.to.re "/sH\x0a")))))
; /^\x2f[a-z0-9]{51}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 51 51) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/Ui\x0a"))))
(check-sat)
