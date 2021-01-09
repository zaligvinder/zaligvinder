(declare-const X String)
; User-Agent\x3A.*Host\x3a\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.wordiq.com\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:AlexaOnline%21%21%21\x0a"))))
; /STOR\x20PIC\x5f\d{6}[a-z]{2}\x5f\x20\x5f\d{7}\x20\x2e\d{3}/i
(assert (str.in.re X (re.++ (str.to.re "/STOR PIC_") ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "_ _") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re " .") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/i\x0a"))))
; ^01[0-2]\d{8}$
(assert (str.in.re X (re.++ (str.to.re "01") (re.range "0" "2") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; Ready\s+Toolbar\d+ServerLiteToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Toolbar") (re.+ (re.range "0" "9")) (str.to.re "ServerLiteToolbar\x0a")))))
; \b[P|p]*(OST|ost)*\.*\s*[O|o|0]*(ffice|FFICE)*\.*\s*[B|b][O|o|0][X|x]\b
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "P") (str.to.re "|") (str.to.re "p"))) (re.* (re.union (str.to.re "OST") (str.to.re "ost"))) (re.* (str.to.re ".")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re "O") (str.to.re "|") (str.to.re "o") (str.to.re "0"))) (re.* (re.union (str.to.re "ffice") (str.to.re "FFICE"))) (re.* (str.to.re ".")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "B") (str.to.re "|") (str.to.re "b")) (re.union (str.to.re "O") (str.to.re "|") (str.to.re "o") (str.to.re "0")) (re.union (str.to.re "X") (str.to.re "|") (str.to.re "x")) (str.to.re "\x0a"))))
(check-sat)
