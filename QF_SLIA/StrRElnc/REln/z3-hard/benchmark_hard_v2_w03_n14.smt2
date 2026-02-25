(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.++ (re.union (str.to_re "920") (str.to_re "875")) (str.to_re "191")))))
(assert (str.in_re x (re.+ (re.* (re.* (re.+ (re.range "6" "9")))))))

(assert (> (+ (* 10 (str.len y)) (* (- 3) (str.to_int y))) 50))
(assert (>= (+ (* 8 (str.len x)) (str.len y)) 73))

(check-sat)