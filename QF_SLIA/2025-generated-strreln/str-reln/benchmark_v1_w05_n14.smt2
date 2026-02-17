(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "0"))))

(assert (> (* 3 (str.to_int x)) 98))
(assert (= (+ (str.len x) (* (- 6) (str.to_int x))) 82))
(assert (> (* 9 (str.len x)) 64))
(assert (< (- (str.to_int x)) 13))

(check-sat)