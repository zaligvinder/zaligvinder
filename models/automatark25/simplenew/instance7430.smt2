(declare-const X String)
; /\x3e\x0d\x0aSUBJECT\x3a (\d{1,3}\x2e){3}\d{1,3}\x7c[^\r\n]*\x7c\d{2,4}\x0d\x0a/G
(assert (str.in.re X (re.++ (str.to.re "/>\x0d\x0aSUBJECT: ") ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "|") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "|") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "\x0d\x0a/G\x0a"))))
(check-sat)
