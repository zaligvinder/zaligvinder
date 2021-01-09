(declare-const X String)
; /\/Java([0-9]{1,2})?\.jar\?java=[0-9]{2}/U
(assert (not (str.in.re X (re.++ (str.to.re "//Java") (re.opt ((_ re.loop 1 2) (re.range "0" "9"))) (str.to.re ".jar?java=") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "/U\x0a")))))
; /\x2esvgz?([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.svg") (re.opt (str.to.re "z")) (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /infor\.php\?uid=\w{52}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/infor.php?uid=") ((_ re.loop 52 52) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/Ui\x0a")))))
(check-sat)
