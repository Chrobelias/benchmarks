(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "87" x)))

(assert (str.in_re y (re.+ (re.range "3" "8"))))
(assert (str.in_re x (re.+ (re.++ (re.range "6" "9") (re.* (str.to_re "227"))))))

(assert (= (+ (* 8 (str.len x)) (* (- 7) (str.to_int x))) 19))

(check-sat)