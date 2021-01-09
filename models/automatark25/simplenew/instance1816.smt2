(declare-const X String)
; /Content-Disposition\x3a\x20inline\x3b[^\x0d\x0a]filename=[a-z]{5,8}\d{2,3}\.pdf\x0d\x0a/Hm
(assert (not (str.in.re X (re.++ (str.to.re "/Content-Disposition: inline;") (re.union (str.to.re "\x0d") (str.to.re "\x0a")) (str.to.re "filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".pdf\x0d\x0a/Hm\x0a")))))
(check-sat)
