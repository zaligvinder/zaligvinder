(declare-const X String)
; ^(([0-9]{5})|([0-9]{3}[ ]{0,1}[0-9]{2}))$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; (Mo(n(day)?)?|Tu(e(sday)?)?|We(d(nesday)?)?|Th(u(rsday)?)?|Fr(i(day)?)?|Sa(t(urday)?)?|Su(n(day)?)?)
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "Mo") (re.opt (re.++ (str.to.re "n") (re.opt (str.to.re "day"))))) (re.++ (str.to.re "Tu") (re.opt (re.++ (str.to.re "e") (re.opt (str.to.re "sday"))))) (re.++ (str.to.re "We") (re.opt (re.++ (str.to.re "d") (re.opt (str.to.re "nesday"))))) (re.++ (str.to.re "Th") (re.opt (re.++ (str.to.re "u") (re.opt (str.to.re "rsday"))))) (re.++ (str.to.re "Fr") (re.opt (re.++ (str.to.re "i") (re.opt (str.to.re "day"))))) (re.++ (str.to.re "Sa") (re.opt (re.++ (str.to.re "t") (re.opt (str.to.re "urday"))))) (re.++ (str.to.re "Su") (re.opt (re.++ (str.to.re "n") (re.opt (str.to.re "day")))))) (str.to.re "\x0a")))))
; User-Agent\x3A[^\n\r]*aadserver\dYOUR\x2Fxml\x2Ftoolbar\x2F
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "aadserver") (re.range "0" "9") (str.to.re "YOUR/xml/toolbar/\x0a")))))
; this\s+MyBrowser\d+Redirector\x22ServerHost\x3AX-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "this") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "MyBrowser") (re.+ (re.range "0" "9")) (str.to.re "Redirector\x22ServerHost:X-Mailer:\x13\x0a")))))
; aresflashdownloader\x2Ecom%3fccecaedbebfcaf\x2Ecom\stoolbar\.anwb\.nl
(assert (not (str.in.re X (re.++ (str.to.re "aresflashdownloader.com%3fccecaedbebfcaf.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl\x0a")))))
(check-sat)
