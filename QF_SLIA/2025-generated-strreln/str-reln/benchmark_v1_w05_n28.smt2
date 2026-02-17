(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (re.* (str.to_re "5")) (str.to_re "98")) (re.+ (str.to_re "95")))))

(assert (>= (+ (* 6 (str.len x)) (* 6 (str.to_int x))) 72))
(assert (= (+ (* (- 7) (str.len x)) (* 3 (str.to_int x))) 47))
(assert (> (* 9 (str.len x)) 75))

(check-sat)