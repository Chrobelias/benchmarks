(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.* (re.++ (str.to_re "5") (str.to_re "24")))))
(assert (str.in_re y (re.union (str.to_re "6") (re.union (re.range "0" "4") (re.* (str.to_re "263"))))))

(assert (>= (+ (* 4 (str.len y)) (* (- 10) (str.to_int y))) 39))

(check-sat)