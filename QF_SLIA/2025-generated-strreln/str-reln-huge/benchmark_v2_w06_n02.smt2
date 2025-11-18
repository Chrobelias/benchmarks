(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.union (re.+ (str.to_re "85")) (re.* (re.* (str.to_re "75"))))))
(assert (str.in_re y (re.* (re.++ (re.++ (str.to_re "77") (str.to_re "6")) (str.to_re "876")))))

(assert (> (+ (* 9 (str.len x)) (* (- 10) (str.len y))) 37))
(assert (<= (+ (* (- 5) (str.len x)) (* 8 (str.len y))) 97))
(assert (<= (+ (* 7 (str.to_int x)) (* (- 7) (str.to_int y))) 82))
(assert (< (+ (* (- 10) (str.len x)) (* (- 5) (str.len y))) 29))
(assert (< (+ (* 3 (str.len x)) (* (- 5) (str.len y))) 96))
(assert (> (+ (* 3 (str.len x)) (* 8 (str.len y))) 37))

(check-sat)