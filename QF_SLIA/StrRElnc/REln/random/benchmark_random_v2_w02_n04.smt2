(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.union (re.+ (str.to_re "432")) (str.to_re "87")) (re.range "3" "9"))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "34") (str.to_re "39")) (re.* (str.to_re "306")))))

(assert (> (* 8 (str.to_int x)) 36))
(assert (< (+ (* (- 7) (str.len x)) (* (- 3) (str.len y))) 1))

(check-sat)