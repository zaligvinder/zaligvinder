(declare-const X String)
; /^\/[a-f0-9]{32}\/[a-f0-9]{32}\.jar$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".jar/Ui\x0a"))))
; \x2Fsearchfast\x2FNavhelper
(assert (str.in.re X (str.to.re "/searchfast/Navhelper\x0a")))
; ^[^ ,0]*$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re ",") (str.to.re "0"))) (str.to.re "\x0a"))))
; \x2Fpagead\x2Fads\?waitingisDownload
(assert (not (str.in.re X (str.to.re "/pagead/ads?waitingisDownload\x0a"))))
(check-sat)
