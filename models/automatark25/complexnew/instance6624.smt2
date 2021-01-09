(declare-const X String)
; /\/[a-z]{4}\.html\?j\=\d{6,7}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 4) (re.range "a" "z")) (str.to.re ".html?j=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; \{[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\}
(assert (str.in.re X (re.++ (str.to.re "{") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "}\x0a"))))
; /^\/\/?[a-z0-9_]{7,8}\/\??[0-9a-f]{60,68}[\x3b\x2c\d+]*$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.opt (str.to.re "/")) ((_ re.loop 7 8) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "/") (re.opt (str.to.re "?")) ((_ re.loop 60 68) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.* (re.union (str.to.re ";") (str.to.re ",") (re.range "0" "9") (str.to.re "+"))) (str.to.re "/U\x0a")))))
; www\.trackhits\.cc\s+wwwHost\x3aRobertVersionspyblini\x2Eini
(assert (str.in.re X (re.++ (str.to.re "www.trackhits.cc") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wwwHost:RobertVersionspyblini.ini\x0a"))))
; /^\/[a-f0-9]{32}\/[a-z]{1,15}-[a-z]{1,15}\.php/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 1 15) (re.range "a" "z")) (str.to.re "-") ((_ re.loop 1 15) (re.range "a" "z")) (str.to.re ".php/U\x0a"))))
(check-sat)
