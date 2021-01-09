(declare-const X String)
; ^[A-PR-UWYZ]([0-9]([A-HJKSTUW]|[0-9])?|[A-HK-Y][0-9]([ABEHMNPRVWXY]|[0-9])) [0-9][ABD-HJLNP-UW-Z]{2}|GIR 0AA$
(assert (str.in.re X (re.union (re.++ (re.union (re.range "A" "P") (re.range "R" "U") (str.to.re "W") (str.to.re "Y") (str.to.re "Z")) (re.union (re.++ (re.range "0" "9") (re.opt (re.union (re.range "A" "H") (str.to.re "J") (str.to.re "K") (str.to.re "S") (str.to.re "T") (str.to.re "U") (str.to.re "W") (re.range "0" "9")))) (re.++ (re.union (re.range "A" "H") (re.range "K" "Y")) (re.range "0" "9") (re.union (str.to.re "A") (str.to.re "B") (str.to.re "E") (str.to.re "H") (str.to.re "M") (str.to.re "N") (str.to.re "P") (str.to.re "R") (str.to.re "V") (str.to.re "W") (str.to.re "X") (str.to.re "Y") (re.range "0" "9")))) (str.to.re " ") (re.range "0" "9") ((_ re.loop 2 2) (re.union (str.to.re "A") (str.to.re "B") (re.range "D" "H") (str.to.re "J") (str.to.re "L") (str.to.re "N") (re.range "P" "U") (re.range "W" "Z")))) (str.to.re "GIR 0AA\x0a"))))
; www\x2Ealtnet\x2Ecom[^\n\r]*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.altnet.com\x1b") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:\x0a")))))
; /^\x2f[A-Z\d]{83}\x3d[A-Z\d]{10}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 83 83) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 10 10) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/Ui\x0a"))))
; /\x3d\x0a$/P
(assert (not (str.in.re X (str.to.re "/=\x0a/P\x0a"))))
; Host\x3AHost\x3AFrom\x3a\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furaxbnymomspyo\x2fzowy
(assert (str.in.re X (str.to.re "Host:Host:From:\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furaxbnymomspyo/zowy\x0a")))
(check-sat)
