(declare-const X String)
; ^[A-Z0-9\\-\\&-]{5,12}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 12) (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "\x5c" "\x5c") (str.to.re "&") (str.to.re "-"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2emka/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mka/i\x0a")))))
; www\x2Eserverlogic3\x2Ecom
(assert (str.in.re X (str.to.re "www.serverlogic3.com\x0a")))
; (^\d{1,5}$|^\d{1,5}\.\d{1,2}$)
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 1 5) (re.range "0" "9")) (re.++ ((_ re.loop 1 5) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; Host\x3AtoUser-Agent\x3AClientsConnected-
(assert (not (str.in.re X (str.to.re "Host:toUser-Agent:ClientsConnected-\x0a"))))
(check-sat)
