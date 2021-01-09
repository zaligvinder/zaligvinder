(declare-const X String)
; url\(['"]?([\w\d_\-\. ]+)['"]?\)
(assert (not (str.in.re X (re.++ (str.to.re "url(") (re.opt (re.union (str.to.re "'") (str.to.re "\x22"))) (re.+ (re.union (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re ".") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re ")\x0a")))))
; httphostHost\x3aAgent\x22
(assert (str.in.re X (str.to.re "httphostHost:Agent\x22\x0a")))
; /\/MacApp\/\d{2}(-\d{2}){3}(:\d{2}){2}\.png\r\n[^\x89]+?\x89PNG/Psmi
(assert (not (str.in.re X (re.++ (str.to.re "//MacApp/") ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 3 3) (re.++ (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 2 2) (re.++ (str.to.re ":") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re ".png\x0d\x0a") (re.+ (re.comp (str.to.re "\x89"))) (str.to.re "\x89PNG/Psmi\x0a")))))
; /filename=[^\n]*\x2eair/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".air/i\x0a")))))
; ^~/[0-9a-zA-Z_][0-9a-zA-Z/_-]*\.[0-9a-zA-Z_-]+$
(assert (not (str.in.re X (re.++ (str.to.re "~/") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_")) (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "/") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re "\x0a")))))
(check-sat)
