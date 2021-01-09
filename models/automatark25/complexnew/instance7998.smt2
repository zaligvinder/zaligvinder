(declare-const X String)
; /[^\n -~\r]{4}/P
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (str.to.re "\x0a") (re.range " " "~") (str.to.re "\x0d"))) (str.to.re "/P\x0a"))))
; \x2Fezsb\s+hirmvtg\x2fggqh\.kqh\dRemotetoolsbar\x2Ekuaiso\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "/ezsb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hirmvtg/ggqh.kqh\x1b") (re.range "0" "9") (str.to.re "Remotetoolsbar.kuaiso.com\x0a"))))
; news\d+Host\x3A\d+Spywww\x2Eemp3finder\x2Ecomwwwvbclient\x3DSpyBuddyZOMBIES\x5fHTTP\x5fGETearch\x2Eearthlink
(assert (not (str.in.re X (re.++ (str.to.re "news") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Spywww.emp3finder.comwwwvbclient=SpyBuddyZOMBIES_HTTP_GETearch.earthlink\x0a")))))
(check-sat)
