(declare-const X String)
; [+-](^0.*)
(assert (not (str.in.re X (re.++ (re.union (str.to.re "+") (str.to.re "-")) (str.to.re "\x0a0") (re.* re.allchar)))))
; /^\/[-\w]{70,78}==?$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 70 78) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "=") (re.opt (str.to.re "=")) (str.to.re "/U\x0a")))))
; TPSystem\s+TencentTraveler\s+www\x2eurlblaze\x2enetCurrentHost\x3AWindows
(assert (not (str.in.re X (re.++ (str.to.re "TPSystem") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TencentTraveler") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.urlblaze.netCurrentHost:Windows\x0a")))))
; /filename=[^\n]*\x2exbm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xbm/i\x0a"))))
; ^\d*\.?(((5)|(0)|))?$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.union (str.to.re "5") (str.to.re "0"))) (str.to.re "\x0a")))))
(check-sat)
