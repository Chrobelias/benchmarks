(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "4"))))

(assert (= (+ (* (- 9) (str.len x)) (* 3 (str.to_int x))) 63))
(assert (< (+ (* (- 10) (str.len x)) (str.to_int x)) 87))

(check-sat)