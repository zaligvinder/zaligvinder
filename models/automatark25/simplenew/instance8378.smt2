(declare-const X String)
; /infor\.php\?uid=\w{52}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/infor.php?uid=") ((_ re.loop 52 52) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/Ui\x0a")))))
(check-sat)
