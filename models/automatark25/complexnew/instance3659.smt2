(declare-const X String)
; /filename=[^\n]*\x2epfm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfm/i\x0a"))))
; LOG\w+PARSER\d+scn\x2emystoretoolbar\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "LOG") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "PARSER") (re.+ (re.range "0" "9")) (str.to.re "scn.mystoretoolbar.com\x13\x0a")))))
; \b(0[0-9]|1[0-1])(\:)(0[0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9])(\:)(0[0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9])\b
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "1"))) (str.to.re ":") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "9")) (re.++ (str.to.re "4") (re.range "0" "9")) (re.++ (str.to.re "5") (re.range "0" "9"))) (str.to.re ":") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "9")) (re.++ (str.to.re "4") (re.range "0" "9")) (re.++ (str.to.re "5") (re.range "0" "9"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2emswmm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mswmm/i\x0a")))))
; /\x2es3m([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.s3m") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
