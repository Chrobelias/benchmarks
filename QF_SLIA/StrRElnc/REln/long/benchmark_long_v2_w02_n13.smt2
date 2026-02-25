(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.union (str.to_re "52") (re.* (str.to_re "49"))) (str.to_re "24"))))
(assert (str.in_re y (re.union (re.* (str.to_re "142")) (str.to_re "719"))))

(assert (<= (+ (* 7 (str.len x)) (* (- 7) (str.len y))) 56))
(assert (< (+ (str.to_int x) (- (str.to_int y))) 87))

(check-sat)