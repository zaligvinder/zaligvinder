(declare-const X String)
; \$(\d*)??,??(\d*)??,??(\d*)\.(\d*)
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.opt (re.* (re.range "0" "9"))) (re.opt (str.to.re ",")) (re.opt (re.* (re.range "0" "9"))) (re.opt (str.to.re ",")) (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; User-Agent\x3AUser-Agent\x3Awww\.take5bingo\.comUser-Agent\x3A
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:www.take5bingo.com\x1bUser-Agent:\x0a")))
; \x2Frss\d+answer\sHost\x3A
(assert (str.in.re X (re.++ (str.to.re "/rss") (re.+ (re.range "0" "9")) (str.to.re "answer") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:\x0a"))))
(check-sat)
