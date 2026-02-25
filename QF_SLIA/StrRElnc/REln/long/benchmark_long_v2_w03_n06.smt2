(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (str.to_re "646") (re.+ (re.union (re.range "5" "8") (str.to_re "314"))))))
(assert (str.in_re x (re.+ (re.++ (str.to_re "51") (str.to_re "723")))))

(assert (> (+ (* (- 3) (str.to_int x)) (* 10 (str.to_int y))) 7))
(assert (>= (+ (* (- 9) (str.to_int x)) (* 3 (str.to_int y))) 16))
(assert (<= (+ (* (- 10) (str.len x)) (* (- 3) (str.len y))) 31))

(check-sat)