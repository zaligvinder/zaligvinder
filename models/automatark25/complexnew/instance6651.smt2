(declare-const X String)
; CMDLoginExciteSubject\x3Adownloadfile\x2eorg
(assert (not (str.in.re X (str.to.re "CMDLoginExciteSubject:downloadfile.org\x0a"))))
; (^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "+") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "+") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "(0)")) (re.++ (str.to.re "(+") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ")(0)")) (re.++ (str.to.re "00") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "0")) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 10 10) (re.union (re.range "0" "9") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a"))))
; [0-9]+
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; (^[1]$)|(^[1]+\d*\.+\d*[1-5]$)
(assert (not (str.in.re X (re.union (str.to.re "1") (re.++ (str.to.re "\x0a") (re.+ (str.to.re "1")) (re.* (re.range "0" "9")) (re.+ (str.to.re ".")) (re.* (re.range "0" "9")) (re.range "1" "5"))))))
; /\/stat_svc\/$/U
(assert (str.in.re X (str.to.re "//stat_svc//U\x0a")))
(check-sat)
