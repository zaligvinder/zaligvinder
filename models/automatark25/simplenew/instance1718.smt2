(declare-const X String)
; /\/jdb\/inf\.php\?id=[a-f0-9]{32}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//jdb/inf.php?id=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Ui\x0a"))))
(check-sat)
