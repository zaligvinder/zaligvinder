(declare-const X String)
; FTP.*www\u{2E}wordiq\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "FTP") (re.* re.allchar) (str.to_re "www.wordiq.com\u{1b}\u{a}")))))
; [\w-]+@([\w-]+\.)+[\w-]+
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@") (re.+ (re.++ (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "."))) (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
; Server\u{2F}download\u{2F}toolbar\u{2F}locatorstoolbar\u{2E}html%3fSubject\u{3A}Everyware
(assert (str.in_re X (str.to_re "Server/download/toolbar/locatorstoolbar.html%3fSubject:Everyware\u{a}")))
(check-sat)
