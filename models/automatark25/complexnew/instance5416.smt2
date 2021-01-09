(declare-const X String)
; /^\/\d{9,10}\/1\/1\d{9}\.pdf$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 9 10) (re.range "0" "9")) (str.to.re "/1/1") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re ".pdf/U\x0a")))))
; Reports[^\n\r]*User-Agent\x3A.*largePass-Onseqepagqfphv\x2fsfd
(assert (str.in.re X (re.++ (str.to.re "Reports") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "largePass-Onseqepagqfphv/sfd\x0a"))))
; <font[a-zA-Z0-9_\^\$\.\|\{\[\}\]\(\)\*\+\?\\~`!@#%&-=;:'",/\n\s]*>
(assert (not (str.in.re X (re.++ (str.to.re "<font") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "^") (str.to.re "$") (str.to.re ".") (str.to.re "|") (str.to.re "{") (str.to.re "[") (str.to.re "}") (str.to.re "]") (str.to.re "(") (str.to.re ")") (str.to.re "*") (str.to.re "+") (str.to.re "?") (str.to.re "\x5c") (str.to.re "~") (str.to.re "`") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "%") (re.range "&" "=") (str.to.re ";") (str.to.re ":") (str.to.re "'") (str.to.re "\x22") (str.to.re ",") (str.to.re "/") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ">\x0a")))))
(check-sat)
