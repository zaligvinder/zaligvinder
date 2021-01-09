(declare-const X String)
; ^1[34][0-9][0-9]\/((1[0-2])|([1-9]))\/(([12][0-9])|(3[01])|[1-9])$
(assert (str.in.re X (re.++ (str.to.re "1") (re.union (str.to.re "3") (str.to.re "4")) (re.range "0" "9") (re.range "0" "9") (str.to.re "/") (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9")) (str.to.re "/") (re.union (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.range "1" "9")) (str.to.re "\x0a"))))
; <body[\d\sa-z\W\S\s]*>
(assert (str.in.re X (re.++ (str.to.re "<body") (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ">\x0a"))))
; /filename=[^\n]*\x2equo/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".quo/i\x0a")))))
; /\x2ejfif([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jfif") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; url=\swww\x2Ealfacleaner\x2Ecom\d+Host\x3A\x2Fproducts\x2Fspyblocs\x2F
(assert (not (str.in.re X (re.++ (str.to.re "url=") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.alfacleaner.com") (re.+ (re.range "0" "9")) (str.to.re "Host:/products/spyblocs/\x13\x0a")))))
(check-sat)
