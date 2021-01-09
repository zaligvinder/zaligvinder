(declare-const X String)
; Host\x3A\s+\x2Ftoolbar\x2Fico\x2F\dencoderserverreport\<\x2Ftitle\>
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/") (re.range "0" "9") (str.to.re "encoderserverreport</title>\x0a")))))
; ^.+@[^\.].*\.[a-z]{2,}$
(assert (not (str.in.re X (re.++ (re.+ re.allchar) (str.to.re "@") (re.comp (str.to.re ".")) (re.* re.allchar) (str.to.re ".\x0a") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z"))))))
; User-Agent\x3AUser-Agent\x3Awww\.take5bingo\.comUser-Agent\x3A
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:www.take5bingo.com\x1bUser-Agent:\x0a")))
(check-sat)
