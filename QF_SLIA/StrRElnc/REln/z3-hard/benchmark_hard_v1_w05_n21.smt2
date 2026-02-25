(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "35") (re.union (re.+ (str.to_re "340")) (str.to_re "270")))))

(assert (> (+ (* 7 (str.len x)) (- (str.to_int x))) 14))
(assert (<= (+ (* (- 8) (str.len x)) (* 3 (str.to_int x))) 14))
(assert (<= (* 3 (str.to_int x)) 43))

(check-sat)