(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.* (re.union (str.to_re "830") (re.++ (str.to_re "51") (re.+ (str.to_re "78")))))))
(assert (str.in_re y (re.+ (re.* (re.++ (re.range "2" "6") (str.to_re "69"))))))

(assert (= (+ (* (- 2) (str.to_int x)) (* 7 (str.to_int y))) 62))
(assert (< (+ (* 4 (str.len x)) (* (- 2) (str.to_int y))) 82))
(assert (>= (+ (* 3 (str.len x)) (* 9 (str.len y)) (* 10 (str.to_int x))) 36))

(check-sat)