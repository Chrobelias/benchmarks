(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.* (re.++ (str.to_re "772") (re.* (re.range "7" "9"))))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "2") (str.to_re "87")))))

(assert (> (+ (* (- 5) (str.len x)) (* 3 (str.len y)) (* (- 5) (str.to_int y))) 95))

(check-sat)