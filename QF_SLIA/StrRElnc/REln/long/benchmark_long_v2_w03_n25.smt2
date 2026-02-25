(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.+ (re.++ (str.to_re "51") (str.to_re "34")))))
(assert (str.in_re x (re.+ (re.* (re.* (re.+ (str.to_re "6")))))))

(assert (> (+ (* 4 (str.len x)) (* (- 9) (str.len y))) 44))
(assert (<= (+ (* 3 (str.len x)) (* (- 9) (str.len y))) 2))
(assert (> (+ (* (- 3) (str.to_int x)) (* (- 6) (str.to_int y))) 100))

(check-sat)