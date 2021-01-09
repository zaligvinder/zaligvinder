(declare-const X String)
; /filename=\x22\d+\x22\r\n/P
(assert (not (str.in.re X (re.++ (str.to.re "/filename=\x22") (re.+ (re.range "0" "9")) (str.to.re "\x22\x0d\x0a/P\x0a")))))
(check-sat)
