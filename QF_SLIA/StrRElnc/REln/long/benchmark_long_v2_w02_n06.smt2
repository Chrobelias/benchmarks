(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (str.to_re "24") (re.union (re.* (str.to_re "854")) (str.to_re "8")))))
(assert (str.in_re y (re.* (re.* (re.* (str.to_re "494"))))))

(assert (> (+ (* (- 5) (str.to_int x)) (* 4 (str.to_int y))) 45))
(assert (<= (+ (* (- 5) (str.len x)) (* (- 7) (str.len y))) 82))

(check-sat)