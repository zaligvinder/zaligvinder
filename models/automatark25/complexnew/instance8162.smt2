(declare-const X String)
; Host\x3ADIMBUSsidebar\.activeshopper\.comUser-Agent\x3APcast
(assert (str.in.re X (str.to.re "Host:DIMBUSsidebar.activeshopper.comUser-Agent:Pcast\x0a")))
; target[ ]*[=]([ ]*)(["]|['])*([_])*([A-Za-z0-9])+(["])*
(assert (str.in.re X (re.++ (str.to.re "target") (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (str.to.re "_")) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.* (str.to.re "\x22")) (str.to.re "\x0a"))))
; messages.*Windows.*From\x3AX-Mailer\x3a+\x2Fcbn\x2FearchSchwindler
(assert (str.in.re X (re.++ (str.to.re "messages") (re.* re.allchar) (str.to.re "Windows") (re.* re.allchar) (str.to.re "From:X-Mailer") (re.+ (str.to.re ":")) (str.to.re "/cbn/earchSchwindler\x0a"))))
; www\.123mania\.com\x2F0409areZC-Bridge
(assert (str.in.re X (str.to.re "www.123mania.com/0409areZC-Bridge\x0a")))
(check-sat)
