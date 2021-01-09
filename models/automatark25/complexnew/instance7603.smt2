(declare-const X String)
; /\x2epfb([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pfb") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2eram/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ram/i\x0a"))))
; User-Agent\x3a\s+Host\x3A\s+proxystylesheet=Excitefhfksjzsfu\x2fahm\.uqs
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "proxystylesheet=Excitefhfksjzsfu/ahm.uqs\x0a"))))
; ^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ ((_ re.loop 1 1) (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ")")) (re.opt (re.union (str.to.re ".") (str.to.re "|") (str.to.re " ") (str.to.re "-")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "|") (str.to.re "-") (str.to.re " ")))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\?spl=\d&br=[^&]+&vers=[^&]+&s=/H
(assert (not (str.in.re X (re.++ (str.to.re "/?spl=") (re.range "0" "9") (str.to.re "&br=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&vers=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&s=/H\x0a")))))
(check-sat)
