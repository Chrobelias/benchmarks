(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (str.to_re "8"))))
(assert (str.in_re x (re.+ (re.* (re.range "1" "5")))))

(assert (>= (+ (* (- 8) (str.len x)) (* 9 (str.to_int x))) 63))

(check-sat)