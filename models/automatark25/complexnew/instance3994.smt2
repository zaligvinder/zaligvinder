(declare-const X String)
; ^[1-9]{1}[0-9]{3}\s?[A-Z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a"))))
; ("((\\.)|[^\\"])*")
(assert (not (str.in.re X (re.++ (str.to.re "\x0a\x22") (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x5c") (str.to.re "\x22"))) (str.to.re "\x22")))))
; Logger\w+gdvsotuqwsg\x2fdxt\.hd\dovpl\dHOST\x3AUser-Agent\x3AURLUBAgent%3fSchwindlerurl=Host\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gdvsotuqwsg/dxt.hd") (re.range "0" "9") (str.to.re "ovpl") (re.range "0" "9") (str.to.re "HOST:User-Agent:URLUBAgent%3fSchwindlerurl=Host:\x0a")))))
(check-sat)
