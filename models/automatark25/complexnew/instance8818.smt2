(declare-const X String)
; cs\x2Eshopperreports\x2EcomActivityHost\x3AYeah\!User-Agent\x3AMicrosoft
(assert (not (str.in.re X (str.to.re "cs.shopperreports.comActivityHost:Yeah!User-Agent:Microsoft\x0a"))))
; /Accept\x3a\x20text\/\*\x2c\x20application\/\*\x0d\x0aUser-Agent\x3a\x20[^\n]+\x0d\x0aHost\x3a[^\n]+\x0d\x0a(Pragma|Cache-Control)\x3a\x20no-cache\x0d\x0a(Connection\x3a Keep-Alive\x0d\x0a)?(\x0d\x0a)?$/
(assert (not (str.in.re X (re.++ (str.to.re "/Accept: text/*, application/*\x0d\x0aUser-Agent: ") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re "\x0d\x0aHost:") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re "\x0d\x0a") (re.union (str.to.re "Pragma") (str.to.re "Cache-Control")) (str.to.re ": no-cache\x0d\x0a") (re.opt (str.to.re "Connection: Keep-Alive\x0d\x0a")) (re.opt (str.to.re "\x0d\x0a")) (str.to.re "/\x0a")))))
(check-sat)
