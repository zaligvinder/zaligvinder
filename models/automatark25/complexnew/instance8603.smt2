(declare-const X String)
; Toolbar\x5Chome\/lordofsearchthis
(assert (not (str.in.re X (str.to.re "Toolbar\x5chome/lordofsearchthis\x0a"))))
; /^(\d{1,2})(\/)(\d{1,2})(\/)(\d{4})(T|\s{1,2})(([0-1][0-9])|(2[0-3])):([0-5][0-9])+$/;
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to.re "T") ((_ re.loop 1 2) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.+ (re.++ (re.range "0" "5") (re.range "0" "9"))) (str.to.re "/;\x0a"))))
; ^\s*[a-zA-Z0-9,\s]+\s*$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ",") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; www\x2Eblazefind\x2Ecom.*started\x2E\s+CodeguruBrowserwww\x2Esogou\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "www.blazefind.com") (re.* re.allchar) (str.to.re "started.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowserwww.sogou.com\x0a"))))
; /filename\s*=\s*[^\r\n]*?\x2ettf[\x22\x27\x3b\s\r\n]/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re ".ttf") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ";") (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/i\x0a")))))
(check-sat)
