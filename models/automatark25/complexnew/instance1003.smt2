(declare-const X String)
; /X-ID\x3a\s\x30\x30+[0-9a-f]{20}(\r\n)+/iH
(assert (str.in.re X (re.++ (str.to.re "/X-ID:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "0") (re.+ (str.to.re "0")) ((_ re.loop 20 20) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.+ (str.to.re "\x0d\x0a")) (str.to.re "/iH\x0a"))))
; Everyware.*Email.*Host\x3Astepwww\x2Ekornputers\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Everyware") (re.* re.allchar) (str.to.re "Email") (re.* re.allchar) (str.to.re "Host:stepwww.kornputers.com\x0a"))))
; ^([0-9a-fA-F][0-9a-fA-F]:){5}([0-9a-fA-F][0-9a-fA-F])$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.++ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")) (str.to.re ":"))) (str.to.re "\x0a") (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))))
; /filename=[^\n]*\x2ertf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rtf/i\x0a")))))
; /^GET\s\/[a-z]{5}\.php\?id=[A-Z0-9]{18}\sHTTP\/1\.[0-1]\r\n/
(assert (not (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 5 5) (re.range "a" "z")) (str.to.re ".php?id=") ((_ re.loop 18 18) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "HTTP/1.") (re.range "0" "1") (str.to.re "\x0d\x0a/\x0a")))))
(check-sat)
