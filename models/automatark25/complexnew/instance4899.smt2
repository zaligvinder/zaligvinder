(declare-const X String)
; \[([\w \.]+)\]\(([\w\.:\/ ]*)\)
(assert (not (str.in.re X (re.++ (str.to.re "[") (re.+ (re.union (str.to.re " ") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "](") (re.* (re.union (str.to.re ".") (str.to.re ":") (str.to.re "/") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ")\x0a")))))
; NetTracker.*Theef2[^\n\r]*versionA-311Subject\x3awww\x2Epcsentinelsoftware\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "NetTracker") (re.* re.allchar) (str.to.re "Theef2") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "versionA-311Subject:www.pcsentinelsoftware.com\x0a")))))
; ^\$[+-]?([0-9]+|[0-9]{1,3}(,[0-9]{3})*)(\.[0-9]{1,2})?$
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.union (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; www\x2Epcsentinelsoftware\x2Ecom
(assert (str.in.re X (str.to.re "www.pcsentinelsoftware.com\x0a")))
(check-sat)
