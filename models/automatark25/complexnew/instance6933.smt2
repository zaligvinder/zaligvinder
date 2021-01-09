(declare-const X String)
; /^(application|audio|example|image|message|model|multipart|text|video)\/[a-zA-Z0-9]+([+.-][a-zA-z0-9]+)*$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "application") (str.to.re "audio") (str.to.re "example") (str.to.re "image") (str.to.re "message") (str.to.re "model") (str.to.re "multipart") (str.to.re "text") (str.to.re "video")) (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.union (str.to.re "+") (str.to.re ".") (str.to.re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))) (str.to.re "/\x0a"))))
; /filename=[^\n]*\x2emim/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mim/i\x0a"))))
(check-sat)
