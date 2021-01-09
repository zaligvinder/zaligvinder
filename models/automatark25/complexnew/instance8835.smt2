(declare-const X String)
; ^[-|\+]?[0-9]{1,3}(\,[0-9]{3})*$|^[-|\+]?[0-9]+$
(assert (not (str.in.re X (re.union (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "|") (str.to.re "+"))) ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "|") (str.to.re "+"))) (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))))
; NetTracker\.htaServerTheef2trustyfiles\x2EcomlogsHost\x3Aversion
(assert (str.in.re X (str.to.re "NetTracker.htaServerTheef2trustyfiles.comlogsHost:version\x0a")))
; /\x2ejpeg([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.jpeg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
