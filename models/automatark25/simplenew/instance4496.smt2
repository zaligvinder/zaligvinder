(declare-const X String)
; /X-ID\x3a\s\x30\x30+[0-9a-f]{20}(\r\n)+/iH
(assert (str.in.re X (re.++ (str.to.re "/X-ID:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "0") (re.+ (str.to.re "0")) ((_ re.loop 20 20) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.+ (str.to.re "\x0d\x0a")) (str.to.re "/iH\x0a"))))
(check-sat)
