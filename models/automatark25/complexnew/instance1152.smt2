(declare-const X String)
; (vi(v))?d
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "viv")) (str.to_re "d\u{a}")))))
; SI\|Server\|\s+OSSProxy\u{5C}home\/lordofsearch%3fAuthorization\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "SI|Server|\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "OSSProxy\u{5c}home/lordofsearch%3fAuthorization:\u{a}")))))
; ^\$[+-]?([0-9]+|[0-9]{1,3}(,[0-9]{3})*)(\.[0-9]{1,2})?$
(assert (str.in_re X (re.++ (str.to_re "$") (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.union (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; LIST\]SpamBlockerUtilityTry2FindBasicHost\u{3A}User-Agent\u{3A}AcmeprotocolSpy
(assert (str.in_re X (str.to_re "LIST]SpamBlockerUtilityTry2FindBasicHost:User-Agent:AcmeprotocolSpy\u{a}")))
(check-sat)
