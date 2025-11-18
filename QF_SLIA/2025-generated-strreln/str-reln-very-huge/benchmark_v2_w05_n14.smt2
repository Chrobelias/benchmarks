(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.++ (str.to_re "635") (re.* (re.++ (str.to_re "38") (str.to_re "811"))))))
(assert (str.in_re y (re.* (re.++ (re.+ (str.to_re "71")) (re.* (re.range "1" "9"))))))

(assert (<= (+ (- (str.to_int x)) (* (- 3) (str.to_int y))) 59))
(assert (<= (+ (* 3 (str.len x)) (* (- 2) (str.len y))) 12))
(assert (= (+ (* 10 (str.len x)) (* (- 3) (str.len y))) 38))
(assert (= (+ (* (- 7) (str.len y)) (* 2 (str.to_int x))) 19))

(check-sat)