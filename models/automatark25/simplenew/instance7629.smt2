(declare-const X String)
; [\x01-\x08,\x0A-\x1F,\x7F,\x81,\x8D,\x8F,\x90,\x9D]
(assert (str.in.re X (re.++ (re.union (re.range "\x01" "\x08") (str.to.re ",") (re.range "\x0a" "\x1f") (str.to.re "\x7f") (str.to.re "\x81") (str.to.re "\x8d") (str.to.re "\x8f") (str.to.re "\x90") (str.to.re "\x9d")) (str.to.re "\x0a"))))
(check-sat)
