(declare-const X String)
; /filename=[^\n]*\x2emkv/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mkv/i\x0a"))))
; ^(((2|8|9)\d{2})|((02|08|09)\d{2})|([1-9]\d{3}))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "2") (str.to.re "8") (str.to.re "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "0") (re.union (str.to.re "2") (str.to.re "8") (str.to.re "9"))) (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
; news\d+Host\x3A\d+Spywww\x2Eemp3finder\x2Ecomwwwvbclient\x3DSpyBuddyZOMBIES\x5fHTTP\x5fGETearch\x2Eearthlink
(assert (not (str.in.re X (re.++ (str.to.re "news") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Spywww.emp3finder.comwwwvbclient=SpyBuddyZOMBIES_HTTP_GETearch.earthlink\x0a")))))
; ^[-+]?\d+(\.\d+)?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; libManager\x2Edll\x5Eget
(assert (not (str.in.re X (str.to.re "libManager.dll^get\x0a"))))
(check-sat)
