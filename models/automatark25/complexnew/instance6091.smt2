(declare-const X String)
; Word\w+My\s+\x22TheZC-BridgeUser-Agent\x3AserverUSER-Attached
(assert (not (str.in.re X (re.++ (str.to.re "Word") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "My") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22TheZC-BridgeUser-Agent:serverUSER-Attached\x0a")))))
; www\x2Emaxifiles\x2Ecom.*Host\x3A
(assert (str.in.re X (re.++ (str.to.re "www.maxifiles.com") (re.* re.allchar) (str.to.re "Host:\x0a"))))
; LIST\]SpamBlockerUtilityTry2FindBasicHost\x3AUser-Agent\x3AAcmeprotocolSpy
(assert (str.in.re X (str.to.re "LIST]SpamBlockerUtilityTry2FindBasicHost:User-Agent:AcmeprotocolSpy\x0a")))
; frame_ver2www\.raxsearch\.comaboutGoogleyxegtd\x2fefcwgHost\x3ATPSystemwww\x2Ee-finder\x2Ecc
(assert (not (str.in.re X (str.to.re "frame_ver2www.raxsearch.comaboutGoogleyxegtd/efcwgHost:TPSystemwww.e-finder.cc\x0a"))))
; ^(\d{2,3}|\(\d{2,3}\))[ ]?\d{3,4}[-]?\d{3,4}$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 2 3) (re.range "0" "9")) (re.++ (str.to.re "(") ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")"))) (re.opt (str.to.re " ")) ((_ re.loop 3 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
