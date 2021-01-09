(declare-const X String)
; /click.php\?c=\w{160}/Ui
(assert (str.in.re X (re.++ (str.to.re "/click") re.allchar (str.to.re "php?c=") ((_ re.loop 160 160) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/Ui\x0a"))))
(check-sat)
