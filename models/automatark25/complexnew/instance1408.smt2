(declare-const X String)
; /filename=[^\n]*\x2easf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asf/i\x0a"))))
; /^\x01\x02.{0,50}[a-zA-Z]{10}\x2fPK.{0,50}[a-zA-Z]{10}\x2f[a-zA-Z]{7}\.classPK/sR
(assert (not (str.in.re X (re.++ (str.to.re "/\x01\x02") ((_ re.loop 0 50) re.allchar) ((_ re.loop 10 10) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "/PK") ((_ re.loop 0 50) re.allchar) ((_ re.loop 10 10) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "/") ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".classPK/sR\x0a")))))
; /filename=[^\n]*\x2ette/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tte/i\x0a")))))
; /\/vic\.aspx\?ver=\d\.\d\.\d+\.\d\x26rnd=\d{5}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//vic.aspx?ver=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.range "0" "9") (str.to.re "&rnd=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
(check-sat)
