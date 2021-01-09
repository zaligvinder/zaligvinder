(declare-const X String)
; /^\/[a-f0-9]{32}\/[a-f0-9]{32}\.swf$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".swf/Ui\x0a"))))
; Computeron\x3Acom\x3E2\x2E41
(assert (not (str.in.re X (str.to.re "Computeron:com>2.41\x0a"))))
; Kontiki\s+resultsmaster\x2Ecom\x7croogoo\x7c
(assert (str.in.re X (re.++ (str.to.re "Kontiki") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "resultsmaster.com\x13|roogoo|\x0a"))))
(check-sat)
