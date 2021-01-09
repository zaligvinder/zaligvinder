(declare-const X String)
; ^([\.\"\'-/ \(/)\s\[\]\\\,\<\>\;\:\{\}]?)([0-9]{3})([\.\"\'-/\(/)\s\[\]\\\,\<\>\;\:\{\}]?)([0-9]{3})([\,\.\"\'-/\(/)\s\[\]\\\<\>\;\:\{\}]?)([0-9]{4})$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re ".") (str.to.re "\x22") (re.range "'" "/") (str.to.re " ") (str.to.re "(") (str.to.re "/") (str.to.re ")") (str.to.re "[") (str.to.re "]") (str.to.re "\x5c") (str.to.re ",") (str.to.re "<") (str.to.re ">") (str.to.re ";") (str.to.re ":") (str.to.re "{") (str.to.re "}") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "\x22") (re.range "'" "/") (str.to.re "(") (str.to.re "/") (str.to.re ")") (str.to.re "[") (str.to.re "]") (str.to.re "\x5c") (str.to.re ",") (str.to.re "<") (str.to.re ">") (str.to.re ";") (str.to.re ":") (str.to.re "{") (str.to.re "}") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ",") (str.to.re ".") (str.to.re "\x22") (re.range "'" "/") (str.to.re "(") (str.to.re "/") (str.to.re ")") (str.to.re "[") (str.to.re "]") (str.to.re "\x5c") (str.to.re "<") (str.to.re ">") (str.to.re ";") (str.to.re ":") (str.to.re "{") (str.to.re "}") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; Try2Find\x23\x23\x23\x23ToolbarServerUser\x3A
(assert (not (str.in.re X (str.to.re "Try2Find####ToolbarServerUser:\x0a"))))
; /^Content-Type\x3a[\x20\x09]+application\/x-msdos-program/smiH
(assert (str.in.re X (re.++ (str.to.re "/Content-Type:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "application/x-msdos-program/smiH\x0a"))))
; as\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=.*X-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "as.starware.com/dp/search?x=") (re.* re.allchar) (str.to.re "X-Mailer:\x13\x0a"))))
; ^((0[1-9])|(1[0-2]))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "\x0a")))))
(check-sat)
