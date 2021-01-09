(declare-const X String)
; ^(\+[1-9][0-9]*(\([0-9]*\)|-[0-9]*-))?[0]?[1-9][0-9\- ]*$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "+") (re.range "1" "9") (re.* (re.range "0" "9")) (re.union (re.++ (str.to.re "(") (re.* (re.range "0" "9")) (str.to.re ")")) (re.++ (str.to.re "-") (re.* (re.range "0" "9")) (str.to.re "-"))))) (re.opt (str.to.re "0")) (re.range "1" "9") (re.* (re.union (re.range "0" "9") (str.to.re "-") (str.to.re " "))) (str.to.re "\x0a"))))
; (^N/A$)|(^[-]?(\d+)(\.\d{0,3})?$)|(^[-]?(\d{1,3},(\d{3},)*\d{3}(\.\d{1,3})?|\d{1,3}(\.\d{1,3})?)$)
(assert (not (str.in.re X (re.union (str.to.re "N/A") (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 3) (re.range "0" "9"))))) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")))))))))))
; Host\x3ASubject\x3AFrom\x3a\xd0\xc5\xcf\xa2
(assert (str.in.re X (str.to.re "Host:Subject:From:\xd0\xc5\xcf\xa2\x0a")))
; at\w+Pre\s+adfsgecoiwnfhirmvtg\x2fggqh\.kqhSurveillanceHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "at") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Pre") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1bhirmvtg/ggqh.kqh\x1bSurveillance\x13Host:\x0a")))))
; Software\s+User-Agent\x3A.*FictionalUser-Agent\x3AUser-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "Software") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "FictionalUser-Agent:User-Agent:\x0a"))))
(check-sat)
