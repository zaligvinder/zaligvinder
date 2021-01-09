(declare-const X String)
; activityHWAEHost\x3aMyWayServidor\x2EHANDYEmail
(assert (not (str.in.re X (str.to.re "activityHWAEHost:MyWayServidor.\x13HANDYEmail\x0a"))))
; /filename=[^\n]*\x2ejnlp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jnlp/i\x0a")))))
; Host\x3A\s+\x2FNFO\x2CRegisteredDeletingadfsgecoiwnf
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/NFO,RegisteredDeletingadfsgecoiwnf\x1b\x0a"))))
; v\x2E\s+ocllceclbhs\x2fgth\w+http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (re.++ (str.to.re "v.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "http://www.searchinweb.com/search.php?said=bar\x0a"))))
(check-sat)
