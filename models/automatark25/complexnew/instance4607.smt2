(declare-const X String)
; /setAttributeNS\s*\x28[^,]*,[^,]*requiredFeatures[^,]*,\s*[\x22\x27][\s\r\n]+[\x22\x27]/i
(assert (str.in.re X (re.++ (str.to.re "/setAttributeNS") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.comp (str.to.re ","))) (str.to.re ",") (re.* (re.comp (str.to.re ","))) (str.to.re "requiredFeatures") (re.* (re.comp (str.to.re ","))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "/i\x0a"))))
; horoscope2YAHOOwww\x2e2-seek\x2ecom\x2fsearchHost\x3A
(assert (str.in.re X (str.to.re "horoscope2YAHOOwww.2-seek.com/searchHost:\x0a")))
; /filename=[^\n]*\x2ecnt/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cnt/i\x0a"))))
(check-sat)
