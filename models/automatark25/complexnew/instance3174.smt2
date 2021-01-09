(declare-const X String)
; User-Agent\x3A\s+www\x2Ewordiq\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.wordiq.com\x1b\x0a"))))
; /\x2eppsx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.ppsx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /counter.img\?theme\=\d+\&digits\=10\&siteId\=\d+$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/counter") re.allchar (str.to.re "img?theme=") (re.+ (re.range "0" "9")) (str.to.re "&digits=10&siteId=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; URLBlaze.*User-Agent\x3A.*mPOPUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "URLBlaze") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "mPOPUser-Agent:\x0a")))))
(check-sat)
