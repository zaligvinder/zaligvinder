(declare-const X String)
; URL\s+url=Host\x3ahttpUser-Agent\x3ASubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "URL") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "url=Host:httpUser-Agent:Subject:\x0a")))))
; ([A-Za-z0-9.]+\s*)+,
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "."))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re ",\x0a"))))
; /file=[\x7c\x27]/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/file=") (re.union (str.to.re "|") (str.to.re "'")) (str.to.re "/Ui\x0a")))))
; ^([1-zA-Z0-1@.\s]{1,255})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 255) (re.union (re.range "1" "z") (re.range "A" "Z") (re.range "0" "1") (str.to.re "@") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)
