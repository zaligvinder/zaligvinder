(declare-const X String)
; www\x2Efreescratchandwin\x2Ecom\d+Server.*www\x2Ecameup\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "www.freescratchandwin.com") (re.+ (re.range "0" "9")) (str.to.re "Server") (re.* re.allchar) (str.to.re "www.cameup.com\x13\x0a")))))
; www\x2Ezhongsou\x2Ecom\w+FTX-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.zhongsou.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "FTX-Mailer:\x13\x0a")))))
; \b[1-9]\d{3}\ +[A-Z]{2}\b
(assert (not (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.+ (str.to.re " ")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a")))))
; \.txt$
(assert (str.in.re X (str.to.re ".txt\x0a")))
; ^#(\d{6})|^#([A-F]{6})|^#([A-F]|[0-9]){6}
(assert (not (str.in.re X (re.++ (str.to.re "#") (re.union ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 6 6) (re.range "A" "F")) (re.++ ((_ re.loop 6 6) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\x0a")))))))
(check-sat)
