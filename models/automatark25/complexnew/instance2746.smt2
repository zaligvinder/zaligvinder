(declare-const X String)
; passcorrect\x3B\d+AcmeSubject\x3Aready\.\r\nby\x2Fcbn\x2Fnode=
(assert (not (str.in.re X (re.++ (str.to.re "passcorrect;") (re.+ (re.range "0" "9")) (str.to.re "AcmeSubject:ready.\x0d\x0aby/cbn/node=\x0a")))))
; /\x26tv\x3d\d\.\d\.\d{4}\.\d{4}/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/&tv=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2epsd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".psd/i\x0a"))))
; \x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax
(assert (not (str.in.re X (str.to.re "\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax\x0a"))))
; ^(((((((00|\+)49[ \-/]?)|0)[1-9][0-9]{1,4})[ \-/]?)|((((00|\+)49\()|\(0)[1-9][0-9]{1,4}\)[ \-/]?))[0-9]{1,7}([ \-/]?[0-9]{1,5})?)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "/"))) (re.union (re.++ (re.union (str.to.re "00") (str.to.re "+")) (str.to.re "49") (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "/")))) (str.to.re "0")) (re.range "1" "9") ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (re.union (str.to.re "00") (str.to.re "+")) (str.to.re "49(")) (str.to.re "(0")) (re.range "1" "9") ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re ")") (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "/"))))) ((_ re.loop 1 7) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "/"))) ((_ re.loop 1 5) (re.range "0" "9")))))))
(check-sat)
