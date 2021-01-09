(declare-const X String)
; /filename=[^\n]*\x2eppsx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ppsx/i\x0a")))))
; /(00356)?(99|79|77|21|27|22|25)[0-9]{6}/g
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (str.to.re "00356")) (re.union (str.to.re "99") (str.to.re "79") (str.to.re "77") (str.to.re "21") (str.to.re "27") (str.to.re "22") (str.to.re "25")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "/g\x0a"))))
; url=\swww\x2Ealfacleaner\x2Ecom\d+Host\x3A\x2Fproducts\x2Fspyblocs\x2F
(assert (str.in.re X (re.++ (str.to.re "url=") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.alfacleaner.com") (re.+ (re.range "0" "9")) (str.to.re "Host:/products/spyblocs/\x13\x0a"))))
; User-Agent\x3A\d+dll\x3F.*started\x2EfeedbackUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "dll?") (re.* re.allchar) (str.to.re "started.feedbackUser-Agent:\x0a"))))
(check-sat)
