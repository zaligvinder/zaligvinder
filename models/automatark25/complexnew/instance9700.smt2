(declare-const X String)
; www\x2eurlblaze\x2enetCurrentHost\x3A
(assert (str.in.re X (str.to.re "www.urlblaze.netCurrentHost:\x0a")))
; /filename=[^\n]*\x2emppl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mppl/i\x0a")))))
; /^SpyBuddy\s+Activity\s+Logs/smi
(assert (str.in.re X (re.++ (str.to.re "/SpyBuddy") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Activity") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Logs/smi\x0a"))))
; ^\\w*$
(assert (str.in.re X (re.++ (str.to.re "\x5c") (re.* (str.to.re "w")) (str.to.re "\x0a"))))
; /^.{9}[^\x03\x0a\x11\x10]/R
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 9 9) re.allchar) (re.union (str.to.re "\x03") (str.to.re "\x0a") (str.to.re "\x11") (str.to.re "\x10")) (str.to.re "/R\x0a")))))
(check-sat)
