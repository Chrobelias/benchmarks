(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "2") (re.+ (str.to_re "5")))))

(assert (> (* 6 (str.len x)) 93))
(assert (< (* 10 (str.to_int x)) 12))
(assert (> (* 9 (str.len x)) 16))
(assert (<= (* 3 (str.to_int x)) 63))
(assert (>= (* 9 (str.to_int x)) 3))

(check-sat)