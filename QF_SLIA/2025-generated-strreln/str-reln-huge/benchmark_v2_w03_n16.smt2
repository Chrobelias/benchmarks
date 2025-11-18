(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.* (re.* (re.++ (re.range "4" "6") (re.* (str.to_re "290")))))))
(assert (str.in_re y (re.* (re.union (re.++ (str.to_re "48") (str.to_re "4")) (str.to_re "789")))))

(assert (< (+ (* 8 (str.to_int x)) (* (- 5) (str.to_int y))) 38))
(assert (< (+ (* (- 8) (str.len x)) (* 7 (str.len y)) (* 4 (str.to_int x)) (* 8 (str.to_int y))) 86))

(check-sat)