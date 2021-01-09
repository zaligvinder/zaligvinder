(declare-const X String)
; /counter.img\?theme\=\d+\&digits\=10\&siteId\=\d+$/Ui
(assert (str.in.re X (re.++ (str.to.re "/counter") re.allchar (str.to.re "img?theme=") (re.+ (re.range "0" "9")) (str.to.re "&digits=10&siteId=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
(check-sat)
