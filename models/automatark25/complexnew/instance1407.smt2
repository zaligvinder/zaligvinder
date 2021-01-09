(declare-const X String)
; ^(([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+([;.](([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+)*$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re ".") ((_ re.loop 1 25) ((_ re.loop 2 5) (re.union (re.range "a" "z") (re.range "A" "Z")))))) (re.* (re.++ (re.union (str.to.re ";") (str.to.re ".")) (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re ".") ((_ re.loop 1 25) ((_ re.loop 2 5) (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (str.to.re "\x0a"))))
; DaysLOGHost\x3aHost\x3a\x7D\x7BOS\x3AHost\x3A
(assert (not (str.in.re X (str.to.re "DaysLOGHost:Host:}{OS:Host:\x0a"))))
; /filename=[a-z]{5,8}\d{2,3}\.xap\x0d\x0a/Hm
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".xap\x0d\x0a/Hm\x0a")))))
; /filename=[^\n]*\x2erat/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rat/i\x0a")))))
; Supreme\s+User-Agent\x3A\s+ApofisToolbarUser
(assert (not (str.in.re X (re.++ (str.to.re "Supreme") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ApofisToolbarUser\x0a")))))
(check-sat)
