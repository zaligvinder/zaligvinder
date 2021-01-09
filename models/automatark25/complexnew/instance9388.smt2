(declare-const X String)
; <font[a-zA-Z0-9_\^\$\.\|\{\[\}\]\(\)\*\+\?\\~`!@#%&-=;:'",/\n\s]*>
(assert (not (str.in.re X (re.++ (str.to.re "<font") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "^") (str.to.re "$") (str.to.re ".") (str.to.re "|") (str.to.re "{") (str.to.re "[") (str.to.re "}") (str.to.re "]") (str.to.re "(") (str.to.re ")") (str.to.re "*") (str.to.re "+") (str.to.re "?") (str.to.re "\x5c") (str.to.re "~") (str.to.re "`") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "%") (re.range "&" "=") (str.to.re ";") (str.to.re ":") (str.to.re "'") (str.to.re "\x22") (str.to.re ",") (str.to.re "/") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ">\x0a")))))
; findX-Mailer\x3aUser-Agent\x3Awww\.take5bingo\.comX-Mailer\x3a\x04\x00
(assert (not (str.in.re X (str.to.re "findX-Mailer:\x13User-Agent:www.take5bingo.com\x1bX-Mailer:\x13\x04\x00\x0a"))))
(check-sat)
