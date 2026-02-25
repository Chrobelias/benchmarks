(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "66" x)))

(assert (str.in_re y (re.* (re.+ (re.union (str.to_re "4") (re.+ (re.range "6" "8")))))))
(assert (str.in_re x (re.union (re.* (re.range "0" "6")) (re.union (re.* (str.to_re "650")) (str.to_re "74")))))

(assert (> (+ (* 6 (str.to_int x)) (* (- 7) (str.to_int y))) 7))
(assert (= (* (- 4) (str.len x)) 5))

(check-sat)