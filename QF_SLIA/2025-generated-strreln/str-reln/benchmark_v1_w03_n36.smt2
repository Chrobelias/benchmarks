(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "4") (re.++ (re.++ (str.to_re "249") (re.+ (str.to_re "887"))) (str.to_re "989")))))

(assert (> (+ (* 9 (str.len x)) (* (- 9) (str.to_int x))) 63))
(assert (< (* (- 10) (str.len x)) 100))

(check-sat)