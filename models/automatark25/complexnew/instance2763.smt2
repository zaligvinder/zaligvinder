(declare-const X String)
; [a-zA-Z0-9]*
(assert (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; this\w+c\.goclick\.com\d
(assert (str.in.re X (re.++ (str.to.re "this") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "c.goclick.com") (re.range "0" "9") (str.to.re "\x0a"))))
; \.cfg\x2Fsearchfast\x2F\x22007A-SpyWebsitehttp\x3A\x2F\x2Fsupremetoolbar\.com\x2Findex\.php\?tpid=
(assert (str.in.re X (str.to.re ".cfg/searchfast/\x22007A-SpyWebsitehttp://supremetoolbar.com/index.php?tpid=\x0a")))
(check-sat)
