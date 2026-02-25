(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (str.to_re "414")))))

(assert (= (+ (- (str.len x)) (* 5 (str.to_int x))) 37))
(assert (< (* (- 5) (str.len x)) 26))
(assert (> (* 10 (str.len x)) 34))

(check-sat)