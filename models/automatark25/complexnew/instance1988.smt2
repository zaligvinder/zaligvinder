(declare-const X String)
; ^(Function|Sub)(\s+[\w]+)\([^\(\)]*\)
(assert (str.in.re X (re.++ (re.union (str.to.re "Function") (str.to.re "Sub")) (str.to.re "(") (re.* (re.union (str.to.re "(") (str.to.re ")"))) (str.to.re ")\x0a") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))
; YAHOODesktopHost\x3aLOGHost\x3AtvshowticketsResultsFROM\x3A
(assert (not (str.in.re X (str.to.re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\x0a"))))
; /Expression\x28\s*?GetClass\x28\x22sun.awt.SunToolkit\x22\x29\s*?,\s*?\x22getField\x22/smi
(assert (not (str.in.re X (re.++ (str.to.re "/Expression(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GetClass(\x22sun") re.allchar (str.to.re "awt") re.allchar (str.to.re "SunToolkit\x22)") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22getField\x22/smi\x0a")))))
; ^([1-9]+)?[13579]$
(assert (str.in.re X (re.++ (re.opt (re.+ (re.range "1" "9"))) (re.union (str.to.re "1") (str.to.re "3") (str.to.re "5") (str.to.re "7") (str.to.re "9")) (str.to.re "\x0a"))))
; User-Agent\x3A\dServer
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.range "0" "9") (str.to.re "Server\x0a"))))
(check-sat)
