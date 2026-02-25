(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.* (re.union (str.to_re "163") (str.to_re "85")))))
(assert (str.in_re x (re.union (re.range "4" "6") (re.union (re.+ (str.to_re "48")) (str.to_re "30")))))
(assert (str.in_re z (re.* (re.union (str.to_re "875") (re.* (str.to_re "839"))))))

(assert (= (+ (* 4 (str.len x)) (* 9 (str.len y)) (* (- 7) (str.len z))) 70))
(assert (< (+ (* 10 (str.len x)) (* 7 (str.len y)) (* (- 10) (str.to_int z))) 60))

(check-sat)