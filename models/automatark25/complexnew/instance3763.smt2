(declare-const X String)
; \[([\w \.]+)\]\(([\w\.:\/ ]*)\)
(assert (not (str.in.re X (re.++ (str.to.re "[") (re.+ (re.union (str.to.re " ") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "](") (re.* (re.union (str.to.re ".") (str.to.re ":") (str.to.re "/") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ")\x0a")))))
; Keylogger\w+Owner\x3A\dBetaWordixqshv\x2fqzccsServer\x00MyBYReferer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00
(assert (str.in.re X (re.++ (str.to.re "Keylogger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.range "0" "9") (str.to.re "BetaWordixqshv/qzccsServer\x00MyBYReferer:www.ccnnlc.com\x13\x04\x00\x0a"))))
; /(DisableSandboxAndDrop|ConfusedClass|FieldAccessVerifierExpl)\.class/ims
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "DisableSandboxAndDrop") (str.to.re "ConfusedClass") (str.to.re "FieldAccessVerifierExpl")) (str.to.re ".class/ims\x0a")))))
; ^((0[1-9])|(1[0-2]))\/(\d{2})$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; download\x2Eeblocs\x2EcomHost\x3AReferer\x3A
(assert (not (str.in.re X (str.to.re "download.eblocs.comHost:Referer:\x0a"))))
(check-sat)
