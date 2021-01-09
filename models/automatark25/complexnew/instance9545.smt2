(declare-const X String)
; [ \t]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eogx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ogx/i\x0a"))))
; .\{\d\}
(assert (str.in.re X (re.++ re.allchar (str.to.re "{") (re.range "0" "9") (str.to.re "}\x0a"))))
; vvvjkhmbgnbbw\x2fqbn\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in.re X (str.to.re "vvvjkhmbgnbbw/qbn\x1b(robert@blackcastlesoft.com)\x0a"))))
(check-sat)
