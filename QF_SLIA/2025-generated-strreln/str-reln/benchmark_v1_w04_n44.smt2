(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "6") (re.+ (str.to_re "36")))))

(assert (< (- (str.to_int x)) 53))
(assert (>= (+ (* 3 (str.len x)) (* (- 8) (str.to_int x))) 100))
(assert (< (* (- 7) (str.len x)) 13))

(check-sat)