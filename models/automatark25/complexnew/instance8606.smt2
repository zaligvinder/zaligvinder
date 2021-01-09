(declare-const X String)
; Keylogger-Pro\s+isUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Keylogger-Pro") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "isUser-Agent:\x0a"))))
; /filename=[^\n]*\x2etif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tif/i\x0a"))))
; /z\d{1,3}/Pi
(assert (str.in.re X (re.++ (str.to.re "/z") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "/Pi\x0a"))))
; Ready\s+Client\dFrom\x3AWebtool\x2Eworld2\x2EcnUser-Agent\x3AUser-Agent\x3aURLencoderthis\x7CConnected
(assert (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Client") (re.range "0" "9") (str.to.re "From:Webtool.world2.cn\x13User-Agent:User-Agent:URLencoderthis|Connected\x0a"))))
; /php\?jnlp\=[a-f0-9]{10}($|\x2c)/U
(assert (not (str.in.re X (re.++ (str.to.re "/php?jnlp=") ((_ re.loop 10 10) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ",/U\x0a")))))
(check-sat)
