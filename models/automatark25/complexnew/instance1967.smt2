(declare-const X String)
; /^.{27}/sR
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 27 27) re.allchar) (str.to.re "/sR\x0a"))))
; ^[a-zA-Z0-9\s]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; HBand,\sHost\x3A[^\n\r]*lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in.re X (re.++ (str.to.re "HBand,") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.fin\x0a")))))
; /^\x2f[a-z\x2d\x5f]{90,97}\.php$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 90 97) (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "_"))) (str.to.re ".php/U\x0a"))))
; YWRtaW46cGFzc3dvcmQ\s+www\x2Ealfacleaner\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "YWRtaW46cGFzc3dvcmQ") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.alfacleaner.com\x0a")))))
(check-sat)
