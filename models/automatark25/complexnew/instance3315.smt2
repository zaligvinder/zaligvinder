(declare-const X String)
; passcorrect\x3B\d+AcmeSubject\x3Aready\.\r\nby\x2Fcbn\x2Fnode=
(assert (str.in.re X (re.++ (str.to.re "passcorrect;") (re.+ (re.range "0" "9")) (str.to.re "AcmeSubject:ready.\x0d\x0aby/cbn/node=\x0a"))))
; /\x2emkv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mkv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\&h=11$/U
(assert (str.in.re X (str.to.re "/&h=11/U\x0a")))
(check-sat)
