(declare-const X String)
; /^\/load\.php\?spl=[^&]+&b=[^&]+&o=[^&]+&i=/U
(assert (not (str.in.re X (re.++ (str.to.re "//load.php?spl=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&b=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&o=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&i=/U\x0a")))))
; \x7CConnected\s+adblock\x2Elinkz\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "|Connected") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adblock.linkz.com\x0a"))))
; ^(\+?36)?[ -]?(\d{1,2}|(\(\d{1,2}\)))/?([ -]?\d){6,7}$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (str.to.re "36"))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to.re "(") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ")"))) (re.opt (str.to.re "/")) ((_ re.loop 6 7) (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.range "0" "9"))) (str.to.re "\x0a"))))
; /filename\s*=\s*[^\r\n]*?\x2epcx[\x22\x27\x3b\s\r\n]/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re ".pcx") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ";") (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/i\x0a")))))
(check-sat)
