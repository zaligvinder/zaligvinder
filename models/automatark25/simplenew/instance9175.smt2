(declare-const X String)
; /^\/index\.php\?[A-Za-z0-9_-]{15}=l3S/U
(assert (str.in.re X (re.++ (str.to.re "//index.php?") ((_ re.loop 15 15) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (str.to.re "=l3S/U\x0a"))))
(check-sat)
