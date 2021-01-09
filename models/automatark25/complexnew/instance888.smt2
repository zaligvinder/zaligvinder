(declare-const X String)
; ^[0-9]{2}[-][0-9]{2}[-][0-9]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; /GET\s\/[\w-]{64}\sHTTP\/1/
(assert (not (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 64 64) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "HTTP/1/\x0a")))))
; www\x2Erichfind\x2Ecom\d+UI2
(assert (str.in.re X (re.++ (str.to.re "www.richfind.com") (re.+ (re.range "0" "9")) (str.to.re "UI2\x0a"))))
; /filename=[^\n]*\x2eamf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".amf/i\x0a")))))
; wjpropqmlpohj\x2flo\d+Host\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "wjpropqmlpohj/lo") (re.+ (re.range "0" "9")) (str.to.re "Host:User-Agent:\x0a")))))
(check-sat)
