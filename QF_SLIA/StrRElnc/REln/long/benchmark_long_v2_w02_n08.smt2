(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.+ (str.to_re "545")) (re.++ (str.to_re "37") (re.+ (re.range "1" "8"))))))
(assert (str.in_re y (re.union (re.++ (re.+ (str.to_re "140")) (str.to_re "612")) (re.* (str.to_re "95")))))

(assert (< (+ (* 8 (str.len x)) (* (- 5) (str.len y))) 70))
(assert (> (+ (* 9 (str.to_int x)) (- (str.to_int y))) 77))

(check-sat)