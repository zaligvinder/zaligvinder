(declare-const X String)
; ^(((((((00|\+)49[ \-/]?)|0)[1-9][0-9]{1,4})[ \-/]?)|((((00|\+)49\()|\(0)[1-9][0-9]{1,4}\)[ \-/]?))[0-9]{1,7}([ \-/]?[0-9]{1,5})?)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "/"))) (re.union (re.++ (re.union (str.to.re "00") (str.to.re "+")) (str.to.re "49") (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "/")))) (str.to.re "0")) (re.range "1" "9") ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (re.union (str.to.re "00") (str.to.re "+")) (str.to.re "49(")) (str.to.re "(0")) (re.range "1" "9") ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re ")") (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "/"))))) ((_ re.loop 1 7) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "/"))) ((_ re.loop 1 5) (re.range "0" "9"))))))))
; Host\x3AAddressDaemonUser-Agent\x3AUser-Agent\x3a
(assert (str.in.re X (str.to.re "Host:AddressDaemonUser-Agent:User-Agent:\x0a")))
; ^(smtp)\.([\w\-]+)\.[\w\-]{2,3}$
(assert (not (str.in.re X (re.++ (str.to.re "smtp.") (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 3) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2easx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asx/i\x0a"))))
(check-sat)
