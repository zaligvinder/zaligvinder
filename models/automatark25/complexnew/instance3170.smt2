(declare-const X String)
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.com\x0a")))))
; /z\x3D[A-Z0-9%]{700}/i
(assert (not (str.in.re X (re.++ (str.to.re "/z=") ((_ re.loop 700 700) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "%"))) (str.to.re "/i\x0a")))))
; /\x2eses([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ses") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
