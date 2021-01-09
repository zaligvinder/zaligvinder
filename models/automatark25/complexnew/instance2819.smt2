(declare-const X String)
; xpsp2-\s+spyblpatHost\x3Ais\x2EphpBarFrom\x3A
(assert (not (str.in.re X (re.++ (str.to.re "xpsp2-") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblpatHost:is.phpBarFrom:\x0a")))))
; LOGLiveHost\x3ALOGHandyhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in.re X (str.to.re "LOGLiveHost:LOGHandyhttp://www.searchinweb.com/search.php?said=bar\x0a"))))
; ([0-9]{6}|[0-9]{3}\s[0-9]{3})
(assert (str.in.re X (re.++ (re.union ((_ re.loop 6 6) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
