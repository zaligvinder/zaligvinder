(declare-const X String)
; \b([2-9][p-z][a-h][2-9]{1,2}[a-z]+[p-z][2-9][p-z][2-9][p-z]|[a-z][a-z]+\d{2}[a-z]|[2-9][p-z]{2}[a-h][2-9]{1,2}[a-z]+[p-z][2-9]{3}[p-z]|\d{12}|[2-9][p-z][a-h][2-9][a-z0-9]+[p-z][2-9]{3}[p-z])\b
(assert (str.in.re X (re.++ (re.union (re.++ (re.range "2" "9") (re.range "p" "z") (re.range "a" "h") ((_ re.loop 1 2) (re.range "2" "9")) (re.+ (re.range "a" "z")) (re.range "p" "z") (re.range "2" "9") (re.range "p" "z") (re.range "2" "9") (re.range "p" "z")) (re.++ (re.range "a" "z") (re.+ (re.range "a" "z")) ((_ re.loop 2 2) (re.range "0" "9")) (re.range "a" "z")) (re.++ (re.range "2" "9") ((_ re.loop 2 2) (re.range "p" "z")) (re.range "a" "h") ((_ re.loop 1 2) (re.range "2" "9")) (re.+ (re.range "a" "z")) (re.range "p" "z") ((_ re.loop 3 3) (re.range "2" "9")) (re.range "p" "z")) ((_ re.loop 12 12) (re.range "0" "9")) (re.++ (re.range "2" "9") (re.range "p" "z") (re.range "a" "h") (re.range "2" "9") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.range "p" "z") ((_ re.loop 3 3) (re.range "2" "9")) (re.range "p" "z"))) (str.to.re "\x0a"))))
; WindowsFrom\x3A\x2FCU1\-extreme\x2Ebiz
(assert (not (str.in.re X (str.to.re "WindowsFrom:/CU1-extreme.biz\x0a"))))
; ^-?\d{1,3}\.(\d{3}\.)*\d{3},\d\d$|^-?\d{1,3},\d\d$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ",") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.range "0" "9") (re.range "0" "9") (str.to.re "\x0a")))))
; Web-Mail\s+\x2Fcgi\x2Flogurl\.cgi.*SurveillanceHost\x3a
(assert (str.in.re X (re.++ (str.to.re "Web-Mail") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cgi/logurl.cgi") (re.* re.allchar) (str.to.re "Surveillance\x13Host:\x0a"))))
; /filename=[^\n]*\x2eavi/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".avi/i\x0a"))))
(check-sat)
