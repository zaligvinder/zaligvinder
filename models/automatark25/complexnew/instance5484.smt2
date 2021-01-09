(declare-const X String)
; started\x2E.*\/cgi-bin\/PopupV
(assert (str.in.re X (re.++ (str.to.re "started.") (re.* re.allchar) (str.to.re "/cgi-bin/PopupV\x0a"))))
; User-Agent\x3A\s+Host\x3Acdpnode=FILESIZE\x3Etoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:cdpnode=FILESIZE>\x13toolsbar.kuaiso.com\x0a")))))
; ^\d*\.?(((5)|(0)|))?$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.union (str.to.re "5") (str.to.re "0"))) (str.to.re "\x0a")))))
; /\bobj\x0a\x20*?\/Pattern\x20*?\x0aendobj\b/i
(assert (not (str.in.re X (re.++ (str.to.re "/obj\x0a") (re.* (str.to.re " ")) (str.to.re "/Pattern") (re.* (str.to.re " ")) (str.to.re "\x0aendobj/i\x0a")))))
(check-sat)
