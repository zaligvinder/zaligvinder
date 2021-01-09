(declare-const X String)
; /(XBOX|Nintendo Wii|smarttv|playstation|hbbtv|philipstv|opera tv|inettv)/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "XBOX") (str.to.re "Nintendo Wii") (str.to.re "smarttv") (str.to.re "playstation") (str.to.re "hbbtv") (str.to.re "philipstv") (str.to.re "opera tv") (str.to.re "inettv")) (str.to.re "/\x0a")))))
; /filename=[^\n]*\x2epsd/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".psd/i\x0a")))))
; /filename=[^\n]*\x2eogx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ogx/i\x0a")))))
; URLUBAgent%3fSchwindlerurl=Host\x3ahttpUser-Agent\x3A
(assert (str.in.re X (str.to.re "URLUBAgent%3fSchwindlerurl=Host:httpUser-Agent:\x0a")))
; EIcdpnode=reportUID\x2FServertoX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "EIcdpnode=reportUID/ServertoX-Mailer:\x13\x0a"))))
(check-sat)
