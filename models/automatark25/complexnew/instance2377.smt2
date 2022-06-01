(declare-const X String)
; /(XBOX|Nintendo Wii|smarttv|playstation|hbbtv|philipstv|opera tv|inettv)/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "XBOX") (str.to_re "Nintendo Wii") (str.to_re "smarttv") (str.to_re "playstation") (str.to_re "hbbtv") (str.to_re "philipstv") (str.to_re "opera tv") (str.to_re "inettv")) (str.to_re "/\u{a}")))))
; /filename=[^\n]*\u{2e}psd/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".psd/i\u{a}")))))
; /filename=[^\n]*\u{2e}ogx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ogx/i\u{a}")))))
; URLUBAgent%3fSchwindlerurl=Host\u{3a}httpUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "URLUBAgent%3fSchwindlerurl=Host:httpUser-Agent:\u{a}")))
; EIcdpnode=reportUID\u{2F}ServertoX-Mailer\u{3a}
(assert (not (str.in_re X (str.to_re "EIcdpnode=reportUID/ServertoX-Mailer:\u{13}\u{a}"))))
(check-sat)
