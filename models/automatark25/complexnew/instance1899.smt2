(declare-const X String)
; search\x2eimesh\x2ecom\s+WatchDogupwww\.klikvipsearch\.com
(assert (str.in.re X (re.++ (str.to.re "search.imesh.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WatchDogupwww.klikvipsearch.com\x0a"))))
; ^\d{8,8}$|^[SC]{2,2}\d{6,6}$
(assert (not (str.in.re X (re.union ((_ re.loop 8 8) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.union (str.to.re "S") (str.to.re "C"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))))
; /GET \/[a-z]{8,12}\?[a-z] HTTP\/1.1/i
(assert (not (str.in.re X (re.++ (str.to.re "/GET /") ((_ re.loop 8 12) (re.range "a" "z")) (str.to.re "?") (re.range "a" "z") (str.to.re " HTTP/1") re.allchar (str.to.re "1/i\x0a")))))
; search\.dropspam\.com.*SupportFiles.*Referer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "search.dropspam.com") (re.* re.allchar) (str.to.re "SupportFiles\x13") (re.* re.allchar) (str.to.re "Referer:\x0a")))))
(check-sat)
