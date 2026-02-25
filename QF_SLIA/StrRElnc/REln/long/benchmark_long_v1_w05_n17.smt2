(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.union (str.to_re "52") (re.* (re.+ (str.to_re "513")))))))

(assert (>= (+ (* (- 4) (str.len x)) (* 7 (str.to_int x))) 19))
(assert (<= (* (- 7) (str.to_int x)) 69))
(assert (> (* 6 (str.len x)) 10))
(assert (= (* 4 (str.len x)) 90))

(check-sat)