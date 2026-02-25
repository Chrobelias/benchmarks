(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.union (re.* (str.to_re "775")) (re.range "0" "5")))))
(assert (str.in_re x (re.* (re.+ (re.* (str.to_re "205"))))))

(assert (>= (+ (* 7 (str.len y)) (* 2 (str.to_int y))) 95))
(assert (< (+ (* 3 (str.len x)) (* 7 (str.len y))) 64))
(assert (< (+ (* (- 2) (str.to_int x)) (* 7 (str.to_int y))) 49))

(check-sat)