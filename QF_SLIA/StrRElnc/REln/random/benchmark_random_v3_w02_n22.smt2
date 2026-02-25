(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.+ (str.to_re "46"))))
(assert (str.in_re y (re.union (str.to_re "0") (re.union (re.* (re.* (str.to_re "9"))) (str.to_re "900")))))
(assert (str.in_re x (re.+ (re.union (str.to_re "33") (re.* (str.to_re "5"))))))

(assert (<= (+ (* (- 3) (str.to_int x)) (* 9 (str.to_int y)) (* 10 (str.to_int z))) 27))
(assert (< (+ (* 10 (str.len x)) (* (- 2) (str.len y)) (str.len z)) 51))

(check-sat)