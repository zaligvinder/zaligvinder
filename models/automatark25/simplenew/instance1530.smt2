(declare-const X String)
; /^Referer\x3a\x20http\x3a\x2f\x2f[^\n]+\/\d{10,20}\x0d\x0a/Hm
(assert (not (str.in.re X (re.++ (str.to.re "/Referer: http://") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re "/") ((_ re.loop 10 20) (re.range "0" "9")) (str.to.re "\x0d\x0a/Hm\x0a")))))
(check-sat)
