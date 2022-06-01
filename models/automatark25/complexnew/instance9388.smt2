(declare-const X String)
; <font[a-zA-Z0-9_\^\$\.\|\{\[\}\]\(\)\*\+\?\\~`!@#%&-=;:'",/\n\s]*>
(assert (not (str.in_re X (re.++ (str.to_re "<font") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "^") (str.to_re "$") (str.to_re ".") (str.to_re "|") (str.to_re "{") (str.to_re "[") (str.to_re "}") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re "*") (str.to_re "+") (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "~") (str.to_re "`") (str.to_re "!") (str.to_re "@") (str.to_re "#") (str.to_re "%") (re.range "&" "=") (str.to_re ";") (str.to_re ":") (str.to_re "'") (str.to_re "\u{22}") (str.to_re ",") (str.to_re "/") (str.to_re "\u{a}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ">\u{a}")))))
; findX-Mailer\u{3a}User-Agent\u{3A}www\.take5bingo\.comX-Mailer\u{3a}\u{4}\u{0}
(assert (not (str.in_re X (str.to_re "findX-Mailer:\u{13}User-Agent:www.take5bingo.com\u{1b}X-Mailer:\u{13}\u{4}\u{0}\u{a}"))))
(check-sat)
