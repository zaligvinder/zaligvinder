(declare-const X String)
; /filename=[^\n]*\x2epui/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pui/i\x0a")))))
; pjpoptwql\x2frlnjsportsHost\x3ASubject\x3aYAHOOdestroyed\x21
(assert (not (str.in.re X (str.to.re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\x0a"))))
; <[\w\"\ '\#\* \=\',\.\\\(\)\/\-\$\{\}\[\]\|\*\?\+\^\&\:\%\;\!]+>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.+ (re.union (str.to.re "\x22") (str.to.re " ") (str.to.re "'") (str.to.re "#") (str.to.re "*") (str.to.re "=") (str.to.re ",") (str.to.re ".") (str.to.re "\x5c") (str.to.re "(") (str.to.re ")") (str.to.re "/") (str.to.re "-") (str.to.re "$") (str.to.re "{") (str.to.re "}") (str.to.re "[") (str.to.re "]") (str.to.re "|") (str.to.re "?") (str.to.re "+") (str.to.re "^") (str.to.re "&") (str.to.re ":") (str.to.re "%") (str.to.re ";") (str.to.re "!") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">\x0a")))))
; now\d+\x2Fbar_pl\x2Fshdoclc\.fcgiareHost\x3Ae2give\.com
(assert (not (str.in.re X (re.++ (str.to.re "now") (re.+ (re.range "0" "9")) (str.to.re "/bar_pl/shdoclc.fcgiareHost:e2give.com\x0a")))))
(check-sat)
