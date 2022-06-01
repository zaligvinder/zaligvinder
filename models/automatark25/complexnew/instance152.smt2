(declare-const X String)
; ([0]|[-]?[0]\.[0-9]+)|([-]?([1-9]+\.[0-9]+))|([-]?[1-9]+)
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "1" "9")) (str.to_re ".") (re.+ (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "-")) (re.+ (re.range "1" "9"))) (str.to_re "0") (re.++ (re.opt (str.to_re "-")) (str.to_re "0.") (re.+ (re.range "0" "9"))))))
; jquery\-(\d|\.)*\.min\.js
(assert (not (str.in_re X (re.++ (str.to_re "jquery-") (re.* (re.union (re.range "0" "9") (str.to_re "."))) (str.to_re ".min.js\u{a}")))))
; [^abc]
(assert (str.in_re X (re.++ (re.union (str.to_re "a") (str.to_re "b") (str.to_re "c")) (str.to_re "\u{a}"))))
; sbRedirectionsHost\u{3A}Host\u{3A}User-Agent\u{3A}hotbar%3fwww\u{2E}internetadvertisingcompany\u{2E}biz
(assert (not (str.in_re X (str.to_re "sbRedirections\u{1b}Host:Host:User-Agent:hotbar%3fwww.internetadvertisingcompany.biz\u{a}"))))
(check-sat)
