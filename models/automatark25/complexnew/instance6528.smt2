(declare-const X String)
; /counter.img\?theme\=\d+\&digits\=10\&siteId\=\d+$/Ui
(assert (str.in.re X (re.++ (str.to.re "/counter") re.allchar (str.to.re "img?theme=") (re.+ (re.range "0" "9")) (str.to.re "&digits=10&siteId=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; /^\/\d\x2eexe/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.range "0" "9") (str.to.re ".exe/Ui\x0a")))))
; ^[A-Z]{1}( |-)?[1-9]{1}[0-9]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
