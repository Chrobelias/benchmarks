(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (re.+ (re.++ (re.+ (str.to_re "0")) (str.to_re "936"))))))
(assert (str.in_re x (re.* (re.union (re.range "3" "9") (re.++ (str.to_re "91") (str.to_re "28"))))))

(assert (> (+ (str.len x) (str.len y)) 52))
(assert (<= (+ (* (- 3) (str.to_int x)) (* (- 10) (str.to_int y))) 91))

(check-sat)