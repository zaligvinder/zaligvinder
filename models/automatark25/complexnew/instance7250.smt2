(declare-const X String)
; gdvsotuqwsg\x2fdxt\.hdFrom\x3ahirmvtg\x2fggqh\.kqh
(assert (not (str.in.re X (str.to.re "gdvsotuqwsg/dxt.hdFrom:hirmvtg/ggqh.kqh\x1b\x0a"))))
; /^\/[0-9]{5}\.jar$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re ".jar/U\x0a"))))
; ^1000([.][0]{1,3})?$|^\d{1,3}$|^\d{1,3}([.]\d{1,3})$|^([.]\d{1,3})$
(assert (str.in.re X (re.union (re.++ (str.to.re "1000") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (str.to.re "0"))))) ((_ re.loop 1 3) (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (str.to.re "\x0a.") ((_ re.loop 1 3) (re.range "0" "9"))))))
(check-sat)
