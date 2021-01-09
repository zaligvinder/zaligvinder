(declare-const X String)
; /Referer\x3a[^\n]*fla\.php\?wq=[a-f0-9]+\x0d\x0a/H
(assert (not (str.in.re X (re.++ (str.to.re "/Referer:") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re "fla.php?wq=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x0d\x0a/H\x0a")))))
(check-sat)
