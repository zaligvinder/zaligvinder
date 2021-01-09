(declare-const X String)
; started\x2E.*\/cgi-bin\/PopupV
(assert (str.in.re X (re.++ (str.to.re "started.") (re.* re.allchar) (str.to.re "/cgi-bin/PopupV\x0a"))))
; http://www.9lessons.info/2008/08/most-popular-articles.html
(assert (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "9lessons") re.allchar (str.to.re "info/2008/08/most-popular-articles") re.allchar (str.to.re "html\x0a"))))
; /\x2eimg([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.img") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[^\n]*\x2evap/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vap/i\x0a"))))
(check-sat)
