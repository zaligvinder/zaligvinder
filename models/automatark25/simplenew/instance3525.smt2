(declare-const X String)
; /^\/index\.php\?[A-Za-z0-9_-]{15}=l3S/U
(assert (not (str.in_re X (re.++ (str.to_re "//index.php?") ((_ re.loop 15 15) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re "-"))) (str.to_re "=l3S/U\u{a}")))))
(check-sat)
