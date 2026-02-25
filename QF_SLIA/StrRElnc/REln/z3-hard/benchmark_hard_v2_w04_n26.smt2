(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "745") (re.union (re.* (str.to_re "842")) (str.to_re "530"))) (str.to_re "18"))))
(assert (str.in_re y (re.* (re.++ (re.range "2" "4") (str.to_re "771")))))

(assert (< (+ (* (- 10) (str.len x)) (* 2 (str.len y)) (* (- 9) (str.to_int y))) 32))
(assert (>= (+ (* 7 (str.len x)) (* (- 4) (str.len y)) (* (- 3) (str.to_int y))) 62))

(check-sat)