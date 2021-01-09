(declare-const X String)
; gdvsotuqwsg\x2fdxt\.hdFrom\x3ahirmvtg\x2fggqh\.kqh
(assert (str.in.re X (str.to.re "gdvsotuqwsg/dxt.hdFrom:hirmvtg/ggqh.kqh\x1b\x0a")))
; ^(.|\n){0,16}$
(assert (not (str.in.re X (re.++ ((_ re.loop 0 16) (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "\x0a")))))
; [0-9]{5}\s?[0-9]{5}
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[1-9]{1}[0-9]{3} ?[A-Z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a"))))
(check-sat)
