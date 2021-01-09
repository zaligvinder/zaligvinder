(declare-const X String)
; /filename=[^\n]*\x2ehlp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".hlp/i\x0a")))))
; Referer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00User-Agent\x3A\x22The
(assert (not (str.in.re X (str.to.re "Referer:www.ccnnlc.com\x13\x04\x00User-Agent:\x22The\x0a"))))
; HXLogOnly\w+areSubject\x3a\swww\.fast-finder\.comawbeta\.net-nucleus\.com
(assert (not (str.in.re X (re.++ (str.to.re "HXLogOnly") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "areSubject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.comawbeta.net-nucleus.com\x0a")))))
(check-sat)
