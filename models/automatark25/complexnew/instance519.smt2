(declare-const X String)
; %3f\s+url=[^\n\r]*httpUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "%3f") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "url=") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "httpUser-Agent:\x0a")))))
; [-'a-zA-Z]
(assert (str.in.re X (re.++ (re.union (str.to.re "-") (str.to.re "'") (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a"))))
; /^\/info\.php\?act\x3d(list|online)/U
(assert (str.in.re X (re.++ (str.to.re "//info.php?act=") (re.union (str.to.re "list") (str.to.re "online")) (str.to.re "/U\x0a"))))
(check-sat)
