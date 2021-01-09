(declare-const X String)
; Test\d+DesktopAddressIDENTIFY666User-Agent\x3A\x5BStatic
(assert (str.in.re X (re.++ (str.to.re "Test") (re.+ (re.range "0" "9")) (str.to.re "DesktopAddressIDENTIFY666User-Agent:[Static\x0a"))))
; ^(((((((00|\+)49[ \-/]?)|0)[1-9][0-9]{1,4})[ \-/]?)|((((00|\+)49\()|\(0)[1-9][0-9]{1,4}\)[ \-/]?))[0-9]{1,7}([ \-/]?[0-9]{1,5})?)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "/"))) (re.union (re.++ (re.union (str.to.re "00") (str.to.re "+")) (str.to.re "49") (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "/")))) (str.to.re "0")) (re.range "1" "9") ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (re.union (str.to.re "00") (str.to.re "+")) (str.to.re "49(")) (str.to.re "(0")) (re.range "1" "9") ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re ")") (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "/"))))) ((_ re.loop 1 7) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "/"))) ((_ re.loop 1 5) (re.range "0" "9")))))))
; ^([987]{1})(\d{1})(\d{8})
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "9") (str.to.re "8") (str.to.re "7"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
