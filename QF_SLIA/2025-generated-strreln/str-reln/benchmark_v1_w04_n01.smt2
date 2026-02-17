(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "532") (re.range "1" "6")) (re.+ (str.to_re "17")))))

(assert (> (+ (- (str.len x)) (* 6 (str.to_int x))) 83))
(assert (>= (+ (* 7 (str.len x)) (* (- 7) (str.to_int x))) 8))

(check-sat)