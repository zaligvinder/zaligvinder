(declare-const X String)
; EvilFTP\s+%3f[^\n\r]*\.bmpfilename\x3D\x22
(assert (str.in.re X (re.++ (str.to.re "EvilFTP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "%3f") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re ".bmpfilename=\x22\x0a"))))
; (^\d{5}\-\d{3}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))))))
; ^[0-3][0-9][0-1]\d{3}-\d{4}?
(assert (str.in.re X (re.++ (re.range "0" "3") (re.range "0" "9") (re.range "0" "1") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
