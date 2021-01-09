(declare-const X String)
; /filename=[^\n]*\x2emkv/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mkv/i\x0a"))))
; <\/?(tag1|tag2)[^>]*\/?>
(assert (str.in.re X (re.++ (str.to.re "<") (re.opt (str.to.re "/")) (re.* (re.comp (str.to.re ">"))) (re.opt (str.to.re "/")) (str.to.re ">\x0atag") (re.union (str.to.re "1") (str.to.re "2")))))
; ^([1-9]|0[1-9]|1[0-2]):([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9"))))
; /^GET\s\/[a-z]{5}\.php\?id=[A-Z0-9]{18}\sHTTP\/1\.[0-1]\r\n/
(assert (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 5 5) (re.range "a" "z")) (str.to.re ".php?id=") ((_ re.loop 18 18) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "HTTP/1.") (re.range "0" "1") (str.to.re "\x0d\x0a/\x0a"))))
; /^\d+O\d+\.jsp\?[a-z0-9\x3d\x2b\x2f]{20}/iR
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iR\x0a")))))
(check-sat)
