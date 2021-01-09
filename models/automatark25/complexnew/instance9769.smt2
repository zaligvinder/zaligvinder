(declare-const X String)
; ^(([^,\n]+),([^,\n]+),([^@]+)@([^\.]+)\.([^,\n]+)\n)+([^,\n]+),([^,\n]+),([^@]+)@([^\.]+)\.([^,\n]+)\n?$
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (str.to.re ",") (str.to.re "\x0a"))) (str.to.re ",") (re.+ (re.union (str.to.re ",") (str.to.re "\x0a"))) (str.to.re ",") (re.+ (re.comp (str.to.re "@"))) (str.to.re "@") (re.+ (re.comp (str.to.re "."))) (str.to.re ".") (re.+ (re.union (str.to.re ",") (str.to.re "\x0a"))) (str.to.re "\x0a"))) (re.+ (re.union (str.to.re ",") (str.to.re "\x0a"))) (str.to.re ",") (re.+ (re.union (str.to.re ",") (str.to.re "\x0a"))) (str.to.re ",") (re.+ (re.comp (str.to.re "@"))) (str.to.re "@") (re.+ (re.comp (str.to.re "."))) (str.to.re ".") (re.+ (re.union (str.to.re ",") (str.to.re "\x0a"))) (re.opt (str.to.re "\x0a")) (str.to.re "\x0a")))))
; User-Agent\x3A.*User-Agent\x3A.*spyblini\x2Einidata\.warezclient\.com
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "spyblini.inidata.warezclient.com\x0a"))))
(check-sat)
