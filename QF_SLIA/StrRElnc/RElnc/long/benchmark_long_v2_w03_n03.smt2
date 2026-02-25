(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= x (str.++ "63" y)))

(assert (str.in_re y (re.union (str.to_re "38") (re.* (str.to_re "33")))))
(assert (str.in_re x (re.union (re.+ (re.range "3" "8")) (re.range "1" "8"))))

(assert (= (+ (* (- 5) (str.len x)) (* (- 6) (str.len y)) (* 4 (str.to_int x))) 18))
(assert (>= (+ (* 2 (str.len x)) (* 9 (str.len y))) 62))

(check-sat)