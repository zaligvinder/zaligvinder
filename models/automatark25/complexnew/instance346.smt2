(declare-const X String)
; ^\d+(\,\d{1,2})?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /setInterval\s*\x28[^\x29]+\x2efocus\x28\x29/smi
(assert (str.in.re X (re.++ (str.to.re "/setInterval") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.+ (re.comp (str.to.re ")"))) (str.to.re ".focus()/smi\x0a"))))
; Logger.*aresflashdownloader\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Logger") (re.* re.allchar) (str.to.re "aresflashdownloader.com\x0a"))))
; ^[a-zA-Z0-9]+([a-zA-Z0-9\-\.]+)?\.(com|org|net|mil|edu|COM|ORG|NET|MIL|EDU)$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re ".")))) (str.to.re ".") (re.union (str.to.re "com") (str.to.re "org") (str.to.re "net") (str.to.re "mil") (str.to.re "edu") (str.to.re "COM") (str.to.re "ORG") (str.to.re "NET") (str.to.re "MIL") (str.to.re "EDU")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2emp3/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mp3/i\x0a")))))
(check-sat)
