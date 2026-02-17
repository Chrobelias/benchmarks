(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "91") (re.+ (str.to_re "27")))))

(assert (> (+ (* 2 (str.len x)) (* (- 3) (str.to_int x))) 5))
(assert (<= (* (- 8) (str.len x)) 27))
(assert (< (* (- 4) (str.len x)) 16))
(assert (<= (- (str.len x)) 70))

(check-sat)