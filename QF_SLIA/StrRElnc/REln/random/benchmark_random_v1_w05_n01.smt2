(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "73")) (re.+ (str.to_re "790")))))

(assert (<= (* 2 (str.len x)) 42))
(assert (< (* 7 (str.len x)) 45))
(assert (< (* (- 9) (str.len x)) 63))
(assert (>= (* (- 8) (str.to_int x)) 64))
(assert (> (* 7 (str.len x)) 59))

(check-sat)