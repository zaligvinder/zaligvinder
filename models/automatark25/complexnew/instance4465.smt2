(declare-const X String)
; /^\/[a-f0-9]{8}\/[a-f0-9]{7,8}\/$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 7 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "//U\x0a"))))
; e2give\.com\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "e2give.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1b####User-Agent:\x0a")))))
(check-sat)
