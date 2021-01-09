(declare-const X String)
; /[a-z\d\x2f\x2b\x3d]{100,300}/Pi
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 100 300) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re "+") (str.to.re "="))) (str.to.re "/Pi\x0a"))))
; versionIDENTIFYstarted\x2EUser-Agent\x3A
(assert (str.in.re X (str.to.re "versionIDENTIFYstarted.User-Agent:\x0a")))
; ^([^ \x21-\x26\x28-\x2C\x2E-\x40\x5B-\x60\x7B-\xAC\xAE-\xBF\xF7\xFE]+)$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (re.range "!" "&") (re.range "(" ",") (re.range "." "@") (re.range "[" "`") (re.range "{" "\xac") (re.range "\xae" "\xbf") (str.to.re "\xf7") (str.to.re "\xfe"))) (str.to.re "\x0a"))))
; /file=[\x7c\x27]/Ui
(assert (str.in.re X (re.++ (str.to.re "/file=") (re.union (str.to.re "|") (str.to.re "'")) (str.to.re "/Ui\x0a"))))
; Host\x3A\.exePass-OnHost\x3A\.exe\x2Ftoolbar\x2F
(assert (str.in.re X (str.to.re "Host:.exePass-OnHost:.exe/toolbar/\x0a")))
(check-sat)
