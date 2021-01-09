(declare-const X String)
; ^([A-Z]{1}\w{1,3}) (\d{1}[A-Z]{2})$
(assert (str.in.re X (re.++ (str.to.re " \x0a") ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "A" "Z")))))
; cdpViewWatcher\x2Fcgi\x2Flogurl\.cgiwww\x2Ebydou\x2Ecom
(assert (str.in.re X (str.to.re "cdpViewWatcher/cgi/logurl.cgiwww.bydou.com\x0a")))
; /filename=[^\n]*\x2ejpeg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpeg/i\x0a")))))
; /X-ID\x3a\s\x30\x30+[0-9a-f]{20}(\r\n)+/iH
(assert (not (str.in.re X (re.++ (str.to.re "/X-ID:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "0") (re.+ (str.to.re "0")) ((_ re.loop 20 20) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.+ (str.to.re "\x0d\x0a")) (str.to.re "/iH\x0a")))))
; SecureNet\s+hostiedesksearch\.dropspam\.com
(assert (str.in.re X (re.++ (str.to.re "SecureNet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hostiedesksearch.dropspam.com\x0a"))))
(check-sat)
