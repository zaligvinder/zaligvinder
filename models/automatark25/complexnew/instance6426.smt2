(declare-const X String)
; (\d+(-\d+)*)+(,\d+(-\d+)*)*
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))))) (re.* (re.++ (str.to.re ",") (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))))) (str.to.re "\x0a")))))
; /\/[a-zA-Z0-9]{32}\.jar/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".jar/U\x0a")))))
(check-sat)
