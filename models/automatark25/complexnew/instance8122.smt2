(declare-const X String)
; /filename=[^\n]*\x2ejpg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpg/i\x0a")))))
; User-Agent\x3A\d+User-Agent\x3A\d+connectedNodes\/cgi-bin\/PopupV
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "connectedNodes/cgi-bin/PopupV\x0a"))))
; ^((Fred|Wilma)\s+Flintstone|(Barney|Betty)\s+Rubble)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "Fred") (str.to.re "Wilma")) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Flintstone")) (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "RubbleB") (re.union (str.to.re "arney") (str.to.re "etty")))) (str.to.re "\x0a")))))
(check-sat)
