(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "7")) (re.++ (str.to_re "74") (re.+ (str.to_re "0"))))))

(assert (< (* (- 6) (str.len x)) 48))
(assert (< (* (- 3) (str.len x)) 4))
(assert (> (* (- 9) (str.to_int x)) 29))
(assert (<= (+ (* 10 (str.len x)) (* (- 7) (str.to_int x))) 63))

(check-sat)