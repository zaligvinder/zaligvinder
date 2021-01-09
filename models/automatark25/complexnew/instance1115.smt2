(declare-const X String)
; <title>(.*?)</title>
(assert (str.in.re X (re.++ (str.to.re "<title>") (re.* re.allchar) (str.to.re "</title>\x0a"))))
; thereHost\x3Aselect\x2FGetwww\x2e2-seek\x2ecom\x2fsearch
(assert (str.in.re X (str.to.re "thereHost:select/Getwww.2-seek.com/search\x0a")))
; /\/[a-z]{4}\.html\?i\=\d{6,7}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 4) (re.range "a" "z")) (str.to.re ".html?i=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; \d{6}
(assert (not (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[0-9]*(\.)?[0-9]+$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
