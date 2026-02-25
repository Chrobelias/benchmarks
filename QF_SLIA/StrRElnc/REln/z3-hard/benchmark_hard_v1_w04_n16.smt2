(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "776") (re.++ (re.+ (str.to_re "85")) (str.to_re "18"))))))

(assert (< (- (str.to_int x)) 55))
(assert (> (* 10 (str.len x)) 72))
(assert (= (+ (* 6 (str.len x)) (- (str.to_int x))) 93))

(check-sat)