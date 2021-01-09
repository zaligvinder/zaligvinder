(declare-const X String)
; TSA\x2FS\x3aUsers\x5chttp\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (not (str.in.re X (str.to.re "TSA/S:Users\x5chttp://tv.seekmo.com/showme.aspx?keyword=\x0a"))))
; /\x2epcx([\x3f\x2f]|$)/Uim
(assert (str.in.re X (re.++ (str.to.re "/.pcx") (re.union (str.to.re "?") (str.to.re "/")) (str.to.re "/Uim\x0a"))))
; /filename=[^\n]*\x2edbp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dbp/i\x0a"))))
; ^\d(\d)?(\d)?$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
