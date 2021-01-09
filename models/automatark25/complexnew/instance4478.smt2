(declare-const X String)
; ^[a-zA-Z0-9][a-zA-Z0-9-_.]{2,8}[a-zA-Z0-9]$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 2 8) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "_") (str.to.re "."))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to.re "\x0a"))))
; /\/bin\.exe$/U
(assert (not (str.in.re X (str.to.re "//bin.exe/U\x0a"))))
; news\d+Host\x3A\d+Spywww\x2Eemp3finder\x2Ecomwwwvbclient\x3DSpyBuddyZOMBIES\x5fHTTP\x5fGETearch\x2Eearthlink
(assert (str.in.re X (re.++ (str.to.re "news") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Spywww.emp3finder.comwwwvbclient=SpyBuddyZOMBIES_HTTP_GETearch.earthlink\x0a"))))
; ^([A-Z]{2}[9]{3}|[A-Z]{3}[9]{2}|[A-Z]{4}[9]{1}|[A-Z]{5})[0-9]{6}([A-Z]{1}[9]{1}|[A-Z]{2})[A-Z0,9]{3}$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 3 3) (str.to.re "9"))) (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 2 2) (str.to.re "9"))) (re.++ ((_ re.loop 4 4) (re.range "A" "Z")) ((_ re.loop 1 1) (str.to.re "9"))) ((_ re.loop 5 5) (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.union (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (str.to.re "9"))) ((_ re.loop 2 2) (re.range "A" "Z"))) ((_ re.loop 3 3) (re.union (re.range "A" "Z") (str.to.re "0") (str.to.re ",") (str.to.re "9"))) (str.to.re "\x0a"))))
; ^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.+ (re.++ (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a")))))
(check-sat)
