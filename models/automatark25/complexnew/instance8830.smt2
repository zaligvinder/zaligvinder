(declare-const X String)
; (\s+|)((\(\d{3}\) +)|(\d{3}-)|(\d{3} +))?\d{3}(-| +)\d{4}( +x\d{1,4})?(\s+|)
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.+ (str.to.re " "))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.+ (str.to.re " "))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (re.+ (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (re.+ (str.to.re " ")) (str.to.re "x") ((_ re.loop 1 4) (re.range "0" "9")))) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; /\/DES\d{9}O\d{4,5}\x2ejsp/Ui
(assert (str.in.re X (re.++ (str.to.re "//DES") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "O") ((_ re.loop 4 5) (re.range "0" "9")) (str.to.re ".jsp/Ui\x0a"))))
; /filename=[^\n]*\x2exap/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xap/i\x0a"))))
; Pleasetvshowticketsmedia\x2Edxcdirect\x2Ecom\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in.re X (str.to.re "Pleasetvshowticketsmedia.dxcdirect.com/bar_pl/chk.fcgi\x0a")))
(check-sat)
