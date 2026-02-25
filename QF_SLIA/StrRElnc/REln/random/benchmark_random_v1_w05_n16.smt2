(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.+ (str.to_re "8"))))))

(assert (>= (* 7 (str.to_int x)) 15))
(assert (<= (+ (* 5 (str.len x)) (- (str.to_int x))) 79))
(assert (= (+ (* 10 (str.len x)) (* (- 5) (str.to_int x))) 63))

(check-sat)