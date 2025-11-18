(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (str.to_re "43"))))
(assert (str.in_re y (re.* (re.++ (str.to_re "304") (str.to_re "263")))))

(assert (< (+ (* (- 6) (str.len x)) (* 4 (str.len y))) 39))
(assert (>= (+ (* 10 (str.len x)) (* (- 4) (str.to_int x)) (* 4 (str.to_int y))) 67))
(assert (< (+ (* (- 7) (str.to_int x)) (* (- 6) (str.to_int y))) 37))
(assert (<= (+ (* (- 8) (str.len y)) (* 4 (str.to_int x))) 30))

(check-sat)