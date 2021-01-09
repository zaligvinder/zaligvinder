(declare-const X String)
; /^images.php\?t=\d{2,7}$/U
(assert (not (str.in.re X (re.++ (str.to.re "/images") re.allchar (str.to.re "php?t=") ((_ re.loop 2 7) (re.range "0" "9")) (str.to.re "/U\x0a")))))
(check-sat)
