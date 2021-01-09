(declare-const X String)
; ^[-\w\s"'=/!@#%&,;:`~\.\$\^\{\[\(\|\)\]\}\*\+\?\\]*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "-") (str.to.re "\x22") (str.to.re "'") (str.to.re "=") (str.to.re "/") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "%") (str.to.re "&") (str.to.re ",") (str.to.re ";") (str.to.re ":") (str.to.re "`") (str.to.re "~") (str.to.re ".") (str.to.re "$") (str.to.re "^") (str.to.re "{") (str.to.re "[") (str.to.re "(") (str.to.re "|") (str.to.re ")") (str.to.re "]") (str.to.re "}") (str.to.re "*") (str.to.re "+") (str.to.re "?") (str.to.re "\x5c") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; /\)\r\nHost\x3a\x20[a-z\d\x2e\x2d]{6,32}\r\nCache\x2dControl\x3a\x20no\x2dcache\r\n\r\n$/
(assert (str.in.re X (re.++ (str.to.re "/)\x0d\x0aHost: ") ((_ re.loop 6 32) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re "\x0d\x0aCache-Control: no-cache\x0d\x0a\x0d\x0a/\x0a"))))
; /filename=[^\n]*\x2ermf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rmf/i\x0a")))))
; /filename=[^\n]*\x2es3m/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".s3m/i\x0a")))))
(check-sat)
