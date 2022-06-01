(declare-const X String)
; /(XBOX|Nintendo Wii|smarttv|playstation|hbbtv|philipstv|opera tv|inettv)/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "XBOX") (str.to_re "Nintendo Wii") (str.to_re "smarttv") (str.to_re "playstation") (str.to_re "hbbtv") (str.to_re "philipstv") (str.to_re "opera tv") (str.to_re "inettv")) (str.to_re "/\u{a}")))))
(check-sat)
