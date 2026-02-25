(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.* (re.union (str.to_re "9") (re.* (str.to_re "96")))))))
(assert (str.in_re y (re.union (str.to_re "7") (re.union (str.to_re "80") (re.+ (re.range "0" "9"))))))

(assert (> (+ (* (- 9) (str.len x)) (str.len y) (- (str.to_int x))) 54))
(assert (<= (+ (* 3 (str.len x)) (* (- 6) (str.len y))) 62))

(check-sat)