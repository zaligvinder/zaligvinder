(declare-const X String)
; /^\/[A-Za-z0-9]+\/[A-Za-z0-9]+\.php\?[A-Za-z0-9\x2B\x2F\x3D]{300}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".php?") ((_ re.loop 300 300) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/") (str.to.re "="))) (str.to.re "/Ui\x0a")))))
; /^("(\\"|[^"])*"|'(\\'|[^'])*'|[^\n])*(\n|$)/gm
(assert (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (re.++ (str.to.re "\x22") (re.* (re.union (str.to.re "\x5c\x22") (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.++ (str.to.re "'") (re.* (re.union (str.to.re "\x5c'") (re.comp (str.to.re "'")))) (str.to.re "'")) (re.comp (str.to.re "\x0a")))) (str.to.re "\x0a/gm\x0a"))))
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "IP") (re.* re.allchar) (str.to.re "encoder") (re.+ (re.range "0" "9")) (str.to.re "SAHPORT-User-Agent:\x0a")))))
; ^(V-|I-)?[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "V-") (str.to.re "I-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
