(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (re.* (str.to_re "113")) (str.to_re "49")))))

(assert (>= (str.len x) 43))
(assert (<= (- (str.len x)) 79))
(assert (< (+ (* 9 (str.len x)) (* (- 6) (str.to_int x))) 35))

(check-sat)