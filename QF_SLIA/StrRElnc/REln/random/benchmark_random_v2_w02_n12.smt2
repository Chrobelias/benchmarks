(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "3") (re.union (re.++ (re.+ (str.to_re "70")) (str.to_re "89")) (str.to_re "7")))))
(assert (str.in_re x (re.* (re.union (str.to_re "688") (re.range "1" "4")))))

(assert (> (+ (* (- 2) (str.to_int x)) (- (str.to_int y))) 12))
(assert (< (+ (* (- 2) (str.len x)) (str.len y)) 4))

(check-sat)