(declare-const X String)
; Computeron\x3Acom\x3E2\x2E41
(assert (str.in.re X (str.to.re "Computeron:com>2.41\x0a")))
; http://www.9lessons.info/2008/08/most-popular-articles.html
(assert (not (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "9lessons") re.allchar (str.to.re "info/2008/08/most-popular-articles") re.allchar (str.to.re "html\x0a")))))
; ^[http://www.|www.][\S]+$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "h") (str.to.re "t") (str.to.re "p") (str.to.re ":") (str.to.re "/") (str.to.re "w") (str.to.re ".") (str.to.re "|")) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a")))))
; User-Agent\x3A\s+source\=IncrediFind
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "source=IncrediFind\x0a"))))
(check-sat)
