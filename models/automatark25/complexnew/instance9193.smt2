(declare-const X String)
; spyblpatHost\x3Ais\x2EphpBarFrom\x3AHost\x3Agdvsotuqwsg\x2fdxt\.hd
(assert (str.in.re X (str.to.re "spyblpatHost:is.phpBarFrom:Host:gdvsotuqwsg/dxt.hd\x0a")))
; /hwid=[^\x0a\x26]+?\x26pc=[^\x0a\x26]+?\x26localip=[^\x0a\x26]+?\x26winver=/U
(assert (str.in.re X (re.++ (str.to.re "/hwid=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&pc=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&localip=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&winver=/U\x0a"))))
; XP\d+Acme\s+\x2Fcbn\x2Fnode=Host\x3A\x3Fsearch\x3DversionContact
(assert (str.in.re X (re.++ (str.to.re "XP") (re.+ (re.range "0" "9")) (str.to.re "Acme") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cbn/node=Host:?search=versionContact\x0a"))))
(check-sat)
