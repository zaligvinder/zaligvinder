(declare-const X String)
; /counter.img\?theme\=\d+\&digits\=10\&siteId\=\d+$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/counter") re.allchar (str.to.re "img?theme=") (re.+ (re.range "0" "9")) (str.to.re "&digits=10&siteId=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; ^\d{1,3}\.\d{1,4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
