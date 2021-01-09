(declare-const X String)
; Server\x3AWordTheHost\x3afrom
(assert (not (str.in.re X (str.to.re "Server:WordTheHost:from\x0a"))))
; /\x2emkv([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.mkv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; \b[1-9]{1}[0-9]{1,5}-\d{2}-\d\b
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
