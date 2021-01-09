(declare-const X String)
; /HTTP\/1.[01]\r\nUser\x2dAgent\x3a\x20[ -~]+\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.info\r\n/
(assert (not (str.in.re X (re.++ (str.to.re "/HTTP/1") re.allchar (re.union (str.to.re "0") (str.to.re "1")) (str.to.re "\x0d\x0aUser-Agent: ") (re.+ (re.range " " "~")) (str.to.re "\x0d\x0aHost: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".info\x0d\x0a/\x0a")))))
; ^.+\@.+\..+$
(assert (str.in.re X (re.++ (re.+ re.allchar) (str.to.re "@") (re.+ re.allchar) (str.to.re ".") (re.+ re.allchar) (str.to.re "\x0a"))))
; www\x2e2-seek\x2ecom\x2fsearch\s+TPSystem
(assert (not (str.in.re X (re.++ (str.to.re "www.2-seek.com/search") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TPSystem\x0a")))))
; ^([1-9]{2}|[0-9][1-9]|[1-9][0-9])[0-9]{3}$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 2 2) (re.range "1" "9")) (re.++ (re.range "0" "9") (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; [0-7]+
(assert (str.in.re X (re.++ (re.+ (re.range "0" "7")) (str.to.re "\x0a"))))
(check-sat)
