(declare-const X String)
; (01*0|1)*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "0") (re.* (str.to.re "1")) (str.to.re "0")) (str.to.re "1"))) (str.to.re "\x0a")))))
; www\.searchinweb\.com\s+User-Agent\x3Abindmqnqgijmng\x2foj
(assert (str.in.re X (re.++ (str.to.re "www.searchinweb.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:bindmqnqgijmng/oj\x0a"))))
; [0-9][.][0-9]{3}$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2ereg([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.reg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
