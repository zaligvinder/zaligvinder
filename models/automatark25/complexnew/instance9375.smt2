(declare-const X String)
; ^([1-9]|[1-9]\d|100)$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (str.to.re "100")) (str.to.re "\x0a"))))
; url=http\x3AGamespyjspIDENTIFYserverHOST\x3ASubject\x3A
(assert (not (str.in.re X (str.to.re "url=http:\x1bGamespyjspIDENTIFYserverHOST:Subject:\x0a"))))
; (W(5|6)[D]?\-\d{9})|(W1\-\d{9}(\-\d{2})?)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "W") (re.union (str.to.re "5") (str.to.re "6")) (re.opt (str.to.re "D")) (str.to.re "-") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to.re "\x0aW1-") ((_ re.loop 9 9) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))))))))
; Logs.*with\x3A\s+OnlineServer\x3aYeah\!
(assert (not (str.in.re X (re.++ (str.to.re "Logs") (re.* re.allchar) (str.to.re "with:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "OnlineServer:Yeah!\x0a")))))
(check-sat)
