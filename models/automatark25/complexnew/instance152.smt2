(declare-const X String)
; ([0]|[-]?[0]\.[0-9]+)|([-]?([1-9]+\.[0-9]+))|([-]?[1-9]+)
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "1" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.+ (re.range "1" "9"))) (str.to.re "0") (re.++ (re.opt (str.to.re "-")) (str.to.re "0.") (re.+ (re.range "0" "9"))))))
; jquery\-(\d|\.)*\.min\.js
(assert (not (str.in.re X (re.++ (str.to.re "jquery-") (re.* (re.union (re.range "0" "9") (str.to.re "."))) (str.to.re ".min.js\x0a")))))
; [^abc]
(assert (str.in.re X (re.++ (re.union (str.to.re "a") (str.to.re "b") (str.to.re "c")) (str.to.re "\x0a"))))
; sbRedirectionsHost\x3AHost\x3AUser-Agent\x3Ahotbar%3fwww\x2Einternetadvertisingcompany\x2Ebiz
(assert (not (str.in.re X (str.to.re "sbRedirections\x1bHost:Host:User-Agent:hotbar%3fwww.internetadvertisingcompany.biz\x0a"))))
(check-sat)
