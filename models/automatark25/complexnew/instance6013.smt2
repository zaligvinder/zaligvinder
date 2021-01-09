(declare-const X String)
; /filename=[^\n]*\x2easx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asx/i\x0a"))))
; /^dir=[0-9A-F]{8}(-[0-9A-F]{4}){4}[0-9A-F]{8}&data=/Pi
(assert (str.in.re X (re.++ (str.to.re "/dir=") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 4 4) (re.++ (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "&data=/Pi\x0a"))))
; <[a-zA-Z][^>]*\son\w+=(\w+|'[^']*'|"[^"]*")[^>]*>
(assert (str.in.re X (re.++ (str.to.re "<") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.comp (str.to.re ">"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "=") (re.union (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.++ (str.to.re "'") (re.* (re.comp (str.to.re "'"))) (str.to.re "'")) (re.++ (str.to.re "\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22"))) (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
; uuid=\s+User-Agent\x3a\d+\x5Chome\/lordofsearch
(assert (not (str.in.re X (re.++ (str.to.re "uuid=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "\x5chome/lordofsearch\x0a")))))
(check-sat)
