(declare-const X String)
; /filename=[^\n]*\x2ecpe/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cpe/i\x0a")))))
; ^[a-zA-Z]:(\\|(\\[^\\/\s:*"<>|]+)+)>
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":") (re.union (str.to.re "\x5c") (re.+ (re.++ (str.to.re "\x5c") (re.+ (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))) (str.to.re ">\x0a")))))
; /\.onpropertychange\s*=\s*function[^{]*?\{[^}]*?\w+\.swapNode\x28/ims
(assert (not (str.in.re X (re.++ (str.to.re "/.onpropertychange") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "function") (re.* (re.comp (str.to.re "{"))) (str.to.re "{") (re.* (re.comp (str.to.re "}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".swapNode(/ims\x0a")))))
(check-sat)
