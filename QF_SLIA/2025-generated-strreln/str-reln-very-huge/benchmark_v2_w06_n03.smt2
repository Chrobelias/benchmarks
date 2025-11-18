(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.+ (str.to_re "5"))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "829") (str.to_re "901")))))

(assert (>= (+ (* 3 (str.len x)) (* 7 (str.to_int x)) (* (- 2) (str.to_int y))) 86))
(assert (<= (+ (* (- 6) (str.to_int x)) (str.to_int y)) 92))
(assert (<= (+ (* (- 6) (str.to_int x)) (* 5 (str.to_int y))) 35))
(assert (<= (+ (* (- 3) (str.len x)) (str.len y)) 50))
(assert (< (+ (* 8 (str.to_int x)) (* (- 6) (str.to_int y))) 29))

(check-sat)