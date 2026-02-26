(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= y (str.++ z "14" x)))

(assert (str.in_re z (re.union (str.to_re "52") (re.+ (str.to_re "57")))))
(assert (str.in_re y (re.* (re.union (re.range "3" "6") (re.union (re.* (str.to_re "88")) (str.to_re "71"))))))
(assert (str.in_re x (re.union (re.union (re.+ (str.to_re "498")) (str.to_re "301")) (str.to_re "665"))))

(assert (<= (+ (* 4 (str.len x)) (* (- 8) (str.len y)) (* 2 (str.len z))) 31))
(assert (= (+ (* (- 8) (str.len y)) (* 8 (str.to_int y))) 64))

(check-sat)