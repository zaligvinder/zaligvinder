(declare-const X String)
; (vi(v))?d
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "viv")) (str.to.re "d\x0a")))))
; SI\|Server\|\s+OSSProxy\x5Chome\/lordofsearch%3fAuthorization\x3a
(assert (not (str.in.re X (re.++ (str.to.re "SI|Server|\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "OSSProxy\x5chome/lordofsearch%3fAuthorization:\x0a")))))
; ^\$[+-]?([0-9]+|[0-9]{1,3}(,[0-9]{3})*)(\.[0-9]{1,2})?$
(assert (str.in.re X (re.++ (str.to.re "$") (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.union (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; LIST\]SpamBlockerUtilityTry2FindBasicHost\x3AUser-Agent\x3AAcmeprotocolSpy
(assert (str.in.re X (str.to.re "LIST]SpamBlockerUtilityTry2FindBasicHost:User-Agent:AcmeprotocolSpy\x0a")))
(check-sat)
