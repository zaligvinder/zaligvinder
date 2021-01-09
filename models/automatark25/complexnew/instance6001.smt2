(declare-const X String)
; /^[0-9]\d{2,4}-\d{6,8}$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "0" "9") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 6 8) (re.range "0" "9")) (str.to.re "/\x0a"))))
; www\x2Emakemesearch\x2EcomLOGOnevclxatmlhavj\x2fvsy
(assert (str.in.re X (str.to.re "www.makemesearch.comLOGOnevclxatmlhavj/vsy\x0a")))
(check-sat)
