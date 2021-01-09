(declare-const X String)
; `.*?((http|ftp|https)://[\w#$&+,\/:;=?@.-]+)[^\w#$&+,\/:;=?@.-]*?`i
(assert (not (str.in.re X (re.++ (str.to.re "`") (re.* re.allchar) (re.* (re.union (str.to.re "#") (str.to.re "$") (str.to.re "&") (str.to.re "+") (str.to.re ",") (str.to.re "/") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "?") (str.to.re "@") (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "`i\x0a") (re.union (str.to.re "http") (str.to.re "ftp") (str.to.re "https")) (str.to.re "://") (re.+ (re.union (str.to.re "#") (str.to.re "$") (str.to.re "&") (str.to.re "+") (str.to.re ",") (str.to.re "/") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "?") (str.to.re "@") (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
; Host\x3AFrom\x3aUser-Agent\x3A\x2Fr\x2Fkeys\x2FkeysClient
(assert (not (str.in.re X (str.to.re "Host:From:User-Agent:/r/keys/keysClient\x0a"))))
; www\x2Emyarmory\x2EcomHost\x3aHost\x3amessagessearch\x2eimesh\x2ecom
(assert (str.in.re X (str.to.re "www.myarmory.comHost:Host:messagessearch.imesh.com\x0a")))
; XP\d+Acme\s+\x2Fcbn\x2Fnode=Host\x3A\x3Fsearch\x3DversionContact
(assert (str.in.re X (re.++ (str.to.re "XP") (re.+ (re.range "0" "9")) (str.to.re "Acme") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cbn/node=Host:?search=versionContact\x0a"))))
; ^\d{1,7}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
