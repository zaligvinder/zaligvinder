(declare-const X String)
; /\/software\x2ephp\x3f[0-9]{15,}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//software.php?/Ui\x0a") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9"))))))
; ^(.|\n){0,16}$
(assert (str.in.re X (re.++ ((_ re.loop 0 16) (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "\x0a"))))
(check-sat)
