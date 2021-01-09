(declare-const X String)
; (\{\\f\d*)\\([^;]+;)
(assert (not (str.in.re X (re.++ (str.to.re "\x5c\x0a{\x5cf") (re.* (re.range "0" "9")) (re.+ (re.comp (str.to.re ";"))) (str.to.re ";")))))
; RXnewads1\x2EcomSPYcom\x2Findex\.php\?tpid=
(assert (str.in.re X (str.to.re "RXnewads1.comSPYcom/index.php?tpid=\x0a")))
; /^\/([a-zA-Z0-9-&+ ]+[^\/?]=){5}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 5 5) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "&") (str.to.re "+") (str.to.re " "))) (re.union (str.to.re "/") (str.to.re "?")) (str.to.re "="))) (str.to.re "/Ui\x0a")))))
; User-Agent\x3AHost\x3ATeomaBarHost\x3AHoursHost\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:Host:TeomaBarHost:HoursHost:\x0a"))))
(check-sat)
