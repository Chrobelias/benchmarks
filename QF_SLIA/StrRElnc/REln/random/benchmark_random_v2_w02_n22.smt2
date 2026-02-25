(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.+ (str.to_re "224")) (str.to_re "323"))))
(assert (str.in_re x (re.* (re.union (str.to_re "7") (str.to_re "33")))))

(assert (< (+ (* 5 (str.len x)) (* (- 9) (str.to_int x))) 53))

(check-sat)