(declare-const X String)
; www\x2Ezhongsou\x2Ecomclick\x2Edotcomtoolbar\x2Ecom
(assert (not (str.in.re X (str.to.re "www.zhongsou.comclick.dotcomtoolbar.com\x0a"))))
; User-Agent\x3A\w+Owner\x3A\w+Wordixqshv\x2fqzccsServer\x00MyBYReferer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Wordixqshv/qzccsServer\x00MyBYReferer:www.ccnnlc.com\x13\x04\x00\x0a"))))
; /\/[a-f0-9]{32}\/[a-f0-9]{32}\x22/R
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x22/R\x0a")))))
(check-sat)
