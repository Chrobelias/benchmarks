(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "4") (re.++ (re.range "4" "6") (re.+ (str.to_re "1"))))))
(assert (str.in_re x (re.union (str.to_re "477") (re.* (re.* (re.* (str.to_re "578")))))))

(assert (>= (+ (* 6 (str.len y)) (- (str.to_int x))) 94))
(assert (<= (+ (* 4 (str.len x)) (* (- 7) (str.len y)) (* (- 3) (str.to_int x)) (* (- 8) (str.to_int y))) 57))

(check-sat)