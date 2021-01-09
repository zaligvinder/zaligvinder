(declare-const X String)
; /^Referer\x3a[^\r\n]+\/[\w_]{32,}\.html\r$/Hsm
(assert (str.in.re X (re.++ (str.to.re "/Referer:") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/.html\x0d/Hsm\x0a") ((_ re.loop 32 32) (re.union (str.to.re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))
(check-sat)
