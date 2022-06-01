(declare-const X String)
; /^images.php\?t=\d{2,7}$/U
(assert (not (str.in_re X (re.++ (str.to_re "/images") re.allchar (str.to_re "php?t=") ((_ re.loop 2 7) (re.range "0" "9")) (str.to_re "/U\u{a}")))))
(check-sat)
