(declare-const X String)
; /^(application|audio|example|image|message|model|multipart|text|video)\/[a-zA-Z0-9]+([+.-][a-zA-z0-9]+)*$/
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "application") (str.to_re "audio") (str.to_re "example") (str.to_re "image") (str.to_re "message") (str.to_re "model") (str.to_re "multipart") (str.to_re "text") (str.to_re "video")) (str.to_re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.union (str.to_re "+") (str.to_re ".") (str.to_re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))) (str.to_re "/\u{a}"))))
; /filename=[^\n]*\u{2e}mim/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mim/i\u{a}"))))
(check-sat)
