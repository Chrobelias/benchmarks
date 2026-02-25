(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (str.to_re "14") (re.union (re.range "3" "8") (re.* (str.to_re "72"))))))
(assert (str.in_re y (re.union (re.+ (str.to_re "17")) (re.+ (str.to_re "347")))))

(assert (> (+ (* (- 6) (str.len x)) (* 4 (str.len y))) 28))
(assert (= (+ (- (str.len y)) (* 3 (str.to_int x))) 62))
(assert (> (+ (* 2 (str.to_int x)) (* 4 (str.to_int y))) 50))

(check-sat)