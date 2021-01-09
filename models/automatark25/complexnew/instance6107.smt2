(declare-const X String)
; ^[^ ,0]*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re ",") (str.to.re "0"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eppsx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ppsx/i\x0a"))))
; /filename\=[a-z0-9]{24}\.jar/H
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 24 24) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jar/H\x0a")))))
; ^(([a-z][0-9])|([0-9][a-z])|([a-z0-9][a-z0-9\-]{1,2}[a-z0-9])|([a-z0-9][a-z0-9\-](([a-z0-9\-][a-z0-9])|([a-z0-9][a-z0-9\-]))[a-z0-9\-]*[a-z0-9]))\.(co|me|org|ltd|plc|net|sch|ac|mod|nhs|police|gov)\.uk$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.range "a" "z") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "a" "z")) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-")) (re.union (re.++ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-")) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-")))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to.re ".") (re.union (str.to.re "co") (str.to.re "me") (str.to.re "org") (str.to.re "ltd") (str.to.re "plc") (str.to.re "net") (str.to.re "sch") (str.to.re "ac") (str.to.re "mod") (str.to.re "nhs") (str.to.re "police") (str.to.re "gov")) (str.to.re ".uk\x0a")))))
(check-sat)
