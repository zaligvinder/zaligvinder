(declare-const X String)
; Server\x00\s+SbAts\s+versionetbuviaebe\x2feqv\.bvv
(assert (not (str.in.re X (re.++ (str.to.re "Server\x00") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SbAts") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "versionetbuviaebe/eqv.bvv\x0a")))))
; zmnjgmomgbdz\x2fzzmw\.gzt\s+Reports\s+HostHost\x3aHost\x3AHost\x3AMyWebSearchSearchAssistant
(assert (str.in.re X (re.++ (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Reports") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HostHost:Host:Host:MyWebSearchSearchAssistant\x0a"))))
; <[\w\"\ '\#\* \=\',\.\\\(\)\/\-\$\{\}\[\]\|\*\?\+\^\&\:\%\;\!]+>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.+ (re.union (str.to.re "\x22") (str.to.re " ") (str.to.re "'") (str.to.re "#") (str.to.re "*") (str.to.re "=") (str.to.re ",") (str.to.re ".") (str.to.re "\x5c") (str.to.re "(") (str.to.re ")") (str.to.re "/") (str.to.re "-") (str.to.re "$") (str.to.re "{") (str.to.re "}") (str.to.re "[") (str.to.re "]") (str.to.re "|") (str.to.re "?") (str.to.re "+") (str.to.re "^") (str.to.re "&") (str.to.re ":") (str.to.re "%") (str.to.re ";") (str.to.re "!") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">\x0a")))))
; (\w+([-+.']\w+)*@(gmail.com))
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (re.union (str.to.re "-") (str.to.re "+") (str.to.re ".") (str.to.re "'")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "@gmail") re.allchar (str.to.re "com"))))
(check-sat)
