(declare-const X String)
; ^(([a-z][0-9])|([0-9][a-z])|([a-z0-9][a-z0-9\-]{1,2}[a-z0-9])|([a-z0-9][a-z0-9\-](([a-z0-9\-][a-z0-9])|([a-z0-9][a-z0-9\-]))[a-z0-9\-]*[a-z0-9]))\.(co|me|org|ltd|plc|net|sch|ac|mod|nhs|police|gov)\.uk$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.range "a" "z") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "a" "z")) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-")) (re.union (re.++ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-")) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-")))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to.re ".") (re.union (str.to.re "co") (str.to.re "me") (str.to.re "org") (str.to.re "ltd") (str.to.re "plc") (str.to.re "net") (str.to.re "sch") (str.to.re "ac") (str.to.re "mod") (str.to.re "nhs") (str.to.re "police") (str.to.re "gov")) (str.to.re ".uk\x0a")))))
; ^[0-9]{1}$|^[1-6]{1}[0-3]{1}$|^64$|\-[1-9]{1}$|^\-[1-6]{1}[0-3]{1}$|^\-64$
(assert (str.in.re X (re.union ((_ re.loop 1 1) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "6")) ((_ re.loop 1 1) (re.range "0" "3"))) (str.to.re "64") (re.++ (str.to.re "-") ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ (str.to.re "-") ((_ re.loop 1 1) (re.range "1" "6")) ((_ re.loop 1 1) (re.range "0" "3"))) (str.to.re "-64\x0a"))))
; \d+,?\d+\$?
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re ",")) (re.+ (re.range "0" "9")) (re.opt (str.to.re "$")) (str.to.re "\x0a"))))
; Google\s+-~-GREATHost\x3aFILESIZE\x3E
(assert (str.in.re X (re.++ (str.to.re "Google") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-~-GREATHost:FILESIZE>\x13\x0a"))))
; /\.php\?b=[A-F0-9]+&v=1\./U
(assert (not (str.in.re X (re.++ (str.to.re "/.php?b=") (re.+ (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&v=1./U\x0a")))))
(check-sat)
