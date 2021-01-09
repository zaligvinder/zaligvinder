(declare-const X String)
; ^(\d+|[a-zA-Z]+)$
(assert (str.in.re X (re.++ (re.union (re.+ (re.range "0" "9")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2edws/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dws/i\x0a"))))
; ^([\w\-\.]+)@((\[([0-9]{1,3}\.){3}[0-9]{1,3}\])|(([\w\-]+\.)+)([a-zA-Z]{2,4}))$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.union (re.++ (str.to.re "[") ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "]")) (re.++ (re.+ (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "."))) ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a")))))
; /Accept\x3a\x20text\/\*\x2c\x20application\/\*\x0d\x0aUser-Agent\x3a\x20[^\n]+\x0d\x0aHost\x3a[^\n]+\x0d\x0a(Pragma|Cache-Control)\x3a\x20no-cache\x0d\x0a(Connection\x3a Keep-Alive\x0d\x0a)?(\x0d\x0a)?$/
(assert (str.in.re X (re.++ (str.to.re "/Accept: text/*, application/*\x0d\x0aUser-Agent: ") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re "\x0d\x0aHost:") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re "\x0d\x0a") (re.union (str.to.re "Pragma") (str.to.re "Cache-Control")) (str.to.re ": no-cache\x0d\x0a") (re.opt (str.to.re "Connection: Keep-Alive\x0d\x0a")) (re.opt (str.to.re "\x0d\x0a")) (str.to.re "/\x0a"))))
; ^(958([0-9])+([0-9])+([0-9])+([0-9])+([0-9])+([0-9])+)|(958-([0-9])+([0-9])+([0-9])+([0-9])+([0-9])+([0-9])+)$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "958") (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9"))) (re.++ (str.to.re "\x0a958-") (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))))))
(check-sat)
