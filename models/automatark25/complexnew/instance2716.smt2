(declare-const X String)
; cdpView.*protocol.*\x2Fs\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in.re X (re.++ (str.to.re "cdpView") (re.* re.allchar) (str.to.re "protocol") (re.* re.allchar) (str.to.re "/s(robert@blackcastlesoft.com)\x0a"))))
; pjpoptwql\x2frlnj\sPG=SPEEDBARadblock\x2Elinkz\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "pjpoptwql/rlnj") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "PG=SPEEDBARadblock.linkz.com\x0a")))))
; ^([1-9]|1[0-2]):[0-5]\d ?(a|A|p|P)(m|M)$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (re.opt (str.to.re " ")) (re.union (str.to.re "a") (str.to.re "A") (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "m") (str.to.re "M")) (str.to.re "\x0a")))))
; /pdf\.php\?pdf=[0-9A-F]+&type=\d+&o=[^&]+&b=/U
(assert (not (str.in.re X (re.++ (str.to.re "/pdf.php?pdf=") (re.+ (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "&type=") (re.+ (re.range "0" "9")) (str.to.re "&o=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&b=/U\x0a")))))
(check-sat)
