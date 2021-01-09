(declare-const X String)
; /^\/[a-f0-9]{8}\.js\?cp\x3d/Umi
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".js?cp=/Umi\x0a"))))
(check-sat)
