(declare-const X String)
; /filename=[^\n]*\x2eaom/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".aom/i\x0a")))))
; <font[a-zA-Z0-9_\^\$\.\|\{\[\}\]\(\)\*\+\?\\~`!@#%&-=;:'",/\n\s]*>
(assert (str.in.re X (re.++ (str.to.re "<font") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "^") (str.to.re "$") (str.to.re ".") (str.to.re "|") (str.to.re "{") (str.to.re "[") (str.to.re "}") (str.to.re "]") (str.to.re "(") (str.to.re ")") (str.to.re "*") (str.to.re "+") (str.to.re "?") (str.to.re "\x5c") (str.to.re "~") (str.to.re "`") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "%") (re.range "&" "=") (str.to.re ";") (str.to.re ":") (str.to.re "'") (str.to.re "\x22") (str.to.re ",") (str.to.re "/") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ">\x0a"))))
; ^[1-9]{1}$|^[0-9]{1}[0-9]{1}[0-9]{1}[0-9]{1}$|^9999$
(assert (str.in.re X (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (str.to.re "9999\x0a"))))
(check-sat)
