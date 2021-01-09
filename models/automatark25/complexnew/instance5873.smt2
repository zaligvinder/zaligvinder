(declare-const X String)
; Host\x3A\d+Subject\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Subject:as.starware.com/dp/search?x=\x0a")))))
; ^(X(-|\.)?0?\d{7}(-|\.)?[A-Z]|[A-Z](-|\.)?\d{7}(-|\.)?[0-9A-Z]|\d{8}(-|\.)?[A-Z])$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "X") (re.opt (re.union (str.to.re "-") (str.to.re "."))) (re.opt (str.to.re "0")) ((_ re.loop 7 7) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re "."))) (re.range "A" "Z")) (re.++ (re.range "A" "Z") (re.opt (re.union (str.to.re "-") (str.to.re "."))) ((_ re.loop 7 7) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re "."))) (re.union (re.range "0" "9") (re.range "A" "Z"))) (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re "."))) (re.range "A" "Z"))) (str.to.re "\x0a"))))
; /\x2edcr([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.dcr") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^(0{1})([1-9]{2})(\s|-|.{0,1})(\d{3})(\s|-|.{0,1})(\d{2})(\s|-|.{0,1})(\d{2})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "0")) ((_ re.loop 2 2) (re.range "1" "9")) (re.union (str.to.re "-") (re.opt re.allchar) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (re.opt re.allchar) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (re.opt re.allchar) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; \x2Fsearchfast\x2FNavhelper
(assert (str.in.re X (str.to.re "/searchfast/Navhelper\x0a")))
(check-sat)
