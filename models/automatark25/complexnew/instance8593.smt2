(declare-const X String)
; <[a-zA-Z][^>]*\son\w+=(\w+|'[^']*'|"[^"]*")[^>]*>
(assert (str.in.re X (re.++ (str.to.re "<") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.comp (str.to.re ">"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "=") (re.union (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.++ (str.to.re "'") (re.* (re.comp (str.to.re "'"))) (str.to.re "'")) (re.++ (str.to.re "\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22"))) (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
; ^(([a-h,A-H,j-n,J-N,p-z,P-Z,0-9]{9})([a-h,A-H,j-n,J-N,p,P,r-t,R-T,v-z,V-Z,0-9])([a-h,A-H,j-n,J-N,p-z,P-Z,0-9])(\d{6}))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 9 9) (re.union (re.range "a" "h") (str.to.re ",") (re.range "A" "H") (re.range "j" "n") (re.range "J" "N") (re.range "p" "z") (re.range "P" "Z") (re.range "0" "9"))) (re.union (re.range "a" "h") (str.to.re ",") (re.range "A" "H") (re.range "j" "n") (re.range "J" "N") (str.to.re "p") (str.to.re "P") (re.range "r" "t") (re.range "R" "T") (re.range "v" "z") (re.range "V" "Z") (re.range "0" "9")) (re.union (re.range "a" "h") (str.to.re ",") (re.range "A" "H") (re.range "j" "n") (re.range "J" "N") (re.range "p" "z") (re.range "P" "Z") (re.range "0" "9")) ((_ re.loop 6 6) (re.range "0" "9"))))))
; Host\x3aSoftwareHost\x3AjokeWEBCAM-Server\x3a
(assert (not (str.in.re X (str.to.re "Host:SoftwareHost:jokeWEBCAM-Server:\x0a"))))
; /Dr[.]?|Phd[.]?|MBA/i
(assert (str.in.re X (re.union (re.++ (str.to.re "/Dr") (re.opt (str.to.re "."))) (re.++ (str.to.re "Phd") (re.opt (str.to.re "."))) (str.to.re "MBA/i\x0a"))))
(check-sat)
