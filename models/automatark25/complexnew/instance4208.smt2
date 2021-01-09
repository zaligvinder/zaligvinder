(declare-const X String)
; ^((l((ll)|(b)|(bb)|(bbb)))|(bb*))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "l") (re.union (str.to.re "ll") (str.to.re "b") (str.to.re "bb") (str.to.re "bbb"))) (re.++ (str.to.re "b") (re.* (str.to.re "b")))) (str.to.re "\x0a")))))
; /^\x2f[A-Za-z0-9]{33}\?s=\d\&m=\d$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 33 33) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "?s=") (re.range "0" "9") (str.to.re "&m=") (re.range "0" "9") (str.to.re "/U\x0a")))))
; /Referer\x3a[^\n]*fla\.php\?wq=[a-f0-9]+\x0d\x0a/H
(assert (not (str.in.re X (re.++ (str.to.re "/Referer:") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re "fla.php?wq=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x0d\x0a/H\x0a")))))
(check-sat)
