(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "4"))))

(assert (>= (+ (- (str.len x)) (* 4 (str.to_int x))) 47))
(assert (> (* (- 6) (str.len x)) 49))

(check-sat)