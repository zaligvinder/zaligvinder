(declare-const X String)
; \x22Thewebsearch\.getmirar\.com
(assert (not (str.in.re X (str.to.re "\x22Thewebsearch.getmirar.com\x0a"))))
; ^(|(0[1-9])|(1[0-2]))\/((0[1-9])|(1\d)|(2\d)|(3[0-1]))\/((\d{4}))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ert/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rt/i\x0a"))))
; User-Agent\x3A\s+GETwww\x2Eoemji\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GETwww.oemji.com\x0a"))))
; [0-9]{4}\s*[a-zA-Z]{2}
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
(check-sat)
