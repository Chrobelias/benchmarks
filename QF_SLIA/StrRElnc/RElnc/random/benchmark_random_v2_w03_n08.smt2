(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "53")))

(assert (str.in_re x (re.+ (re.range "3" "9"))))
(assert (str.in_re y (re.++ (re.* (str.to_re "1")) (str.to_re "779"))))

(assert (< (+ (* (- 10) (str.len x)) (* (- 6) (str.len y)) (* (- 6) (str.to_int x)) (* (- 9) (str.to_int y))) 85))
(assert (> (+ (* (- 3) (str.len x)) (* (- 2) (str.len y))) 84))

(check-sat)