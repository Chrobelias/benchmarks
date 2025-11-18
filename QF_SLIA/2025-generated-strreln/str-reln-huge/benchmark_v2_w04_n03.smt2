(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.+ (re.union (re.union (str.to_re "286") (re.* (str.to_re "92"))) (str.to_re "503")))))
(assert (str.in_re y (re.+ (re.* (re.++ (str.to_re "247") (re.* (str.to_re "4")))))))

(assert (< (+ (str.len x) (* 8 (str.len y))) 83))
(assert (<= (+ (* 6 (str.len y)) (* 2 (str.to_int x))) 33))
(assert (<= (+ (* (- 5) (str.len x)) (* (- 5) (str.len y))) 62))

(check-sat)